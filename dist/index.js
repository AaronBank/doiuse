var Detector, agents, doiuse, featureData, missingSupport, _;

_ = require('lodash');

missingSupport = require('./lib/missing-support');

Detector = require('./lib/detect-feature-use');

featureData = require('./data/features');

agents = require('caniuse-db/data').agents;


/*
Usage: `postcss(doiuse(opts))`.

`opts`:
  - `browsers`: an autoprefixer-like array of browsers.
  - `onUnsupportedFeatureUse`: `function(usageInfo)`
    `usageInfo` looks like this:
    ```
    {
      feature: 'css-gradients', //slug identifying a caniuse-db feature
      featureData:{
        missing: {
          // subset of selected browsers that are missing support for this
          // particular feature, mapped to the version and (lack of)support code
          ie: { '8': 'n' }
        },
        caniuseData: { // data from caniuse-db/features-json/[feature].json }
      },
      usage: //the postcss node where that feature is being used.
    }
    Called once for each usage of each css feature not supported by the selected
    browsers.
 */

doiuse = function(_arg) {
  var browserSelection, browsers, cb, detector, features, onUnsupportedFeatureUse, _ref;
  browserSelection = _arg.browserSelection, onUnsupportedFeatureUse = _arg.onUnsupportedFeatureUse;
  if (browserSelection == null) {
    browserSelection = doiuse["default"].slice();
  }
  cb = onUnsupportedFeatureUse != null ? onUnsupportedFeatureUse : function() {};
  _ref = missingSupport(browserSelection), browsers = _ref.browsers, features = _ref.features;
  detector = new Detector(_.keys(features));
  return {
    info: function() {
      return {
        browsers: browsers,
        features: _.keys(features).map(function(f) {
          return featureData[f];
        })
      };
    },
    postcss: function(css) {
      return detector.process(css, function(_arg1) {
        var feature, loc, message, usage, _ref1;
        feature = _arg1.feature, usage = _arg1.usage;
        browsers = _.reduce(features[feature].missing, function(res, versions, browser) {
          var browserName, _ref1;
          browserName = (_ref1 = agents[browser]) != null ? _ref1.browser : void 0;
          res.push(browserName + ' (' + _.keys(versions).join(',') + ')');
          return res;
        }, []).join(',');
        loc = usage.source;
        message = ((_ref1 = loc.file) != null ? _ref1 : loc.id) + ':' + ' line ' + loc.start.line + ', col ' + loc.start.column + " - " + features[feature].caniuseData.title + ' not supported by: ' + browsers;
        return cb({
          feature: feature,
          featureData: features[feature],
          usage: usage,
          message: message
        });
      });
    }
  };
};

doiuse["default"] = ['> 1%', 'last 2 versions', 'Firefox ESR', 'Opera 12.1'];

module.exports = doiuse;
