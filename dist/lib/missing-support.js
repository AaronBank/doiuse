var BrowserSelection, features, filterStats, fs, missing, _;

features = require('../data/features');

BrowserSelection = require('./browsers');

_ = require('lodash');

fs = require('fs');

filterStats = function(browsers, stats) {
  return _.transform(stats, function(resultStats, versionData, browser) {
    var versionsWithoutSupport;
    versionsWithoutSupport = _.transform(versionData, function(result, support, ver) {
      var selected;
      selected = browsers.test(browser, ver);
      if ((selected != null) && (!/(^|\s)y($|\s)/.test(support))) {
        return result[selected[1]] = support;
      }
    });
    if (_.keys(versionsWithoutSupport).length !== 0) {
      return resultStats[browser] = versionsWithoutSupport;
    }
  });
};


/*
 */

missing = function(browserRequest) {
  var browsers, data, feature, featureData, json, result;
  browsers = new BrowserSelection(browserRequest);
  result = {};
  for (feature in features) {
    data = features[feature];
    json = fs.readFileSync(require.resolve('caniuse-db/features-json/' + feature));
    featureData = JSON.parse(json);
    result[feature] = {
      missing: filterStats(browsers, featureData.stats),
      caniuseData: featureData
    };
  }
  return result;
};

module.exports = missing;
