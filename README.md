doiuse
======

Lint CSS for browser support against caniuse database.

**NOTE:** This is a very, very initial release.  Feedback or contributions
are quite welcome!

# TL;DR

## Command Line
```bash

```

## JS
```javascript
var postcss = require('postcss');
var doiuse = require('doiuse');

postcss(doiuse({
  browsers:['ie >= 6', '> 1%'],
  onUnsupportedFeatureUse: function(usageInfo) {
    console.log(usageInfo.message);
  }
})).process("a { background-size: cover; }")
```

# How it works
In particular, the approach to detecting features usage is currently quite naive.

Refer to the data in /src/data/features.coffee.

- If a feature in that dataset only specifies `properties`, we just use those
  properties for substring matches against the properties used in the input CSS.
- If a feature also specifies `values`, then we also require that the associated
  value matches one of those values (again, with a substring match).
  
TODO:
- [ ] Selectors and @-rules
- [ ] Allow each feature to have multiple instances of the match criteria laid
      out above, so that different, disjoint (property, value) combinations can
      be used to detect a feature.
- [ ] Subfeatures, in to allow a slightly looser coupling with caniuse-db's
      structure (I'm thinking about the different versions of flexbox.)
- [ ] Prefix-aware testing: i.e., pass along a list of prefixes used with a
      given feature.  (This is low priority: just use autoprefixer.)


# API Details: 
`postcss(doiuse(opts)).process(css)`, where `opts` is:
```javascript
{
  browsers: ['ie >= 8', '> 1%'] // an autoprefixer-like array of browsers.
  onUnsupportedFeatureUse: function(usageInfo) { } // a callback for usages of features not supported by the selected browsers
}
```

And `usageInfo` looks like this:

```javascript
{
  message: '<input source>: line <l>, col <c> - CSS3 Gradients not supported by: IE (8)'
  feature: 'css-gradients', //slug identifying a caniuse-db feature
  featureData:{
    title: 'CSS Gradients',
    missing: "IE (8)" // string of browsers missing support for this feature.
    missingData: {
      // map of browser -> version -> (lack of)support code
      ie: { '8': 'n' }
    },
    caniuseData: { // data from caniuse-db/features-json/[feature].json }
  },
  usage: {} //the postcss node where that feature is being used.
}
```
    Called once for each usage of each css feature not supported by the selected
    browsers.


# License

MIT

**NOTE:** The files in test/cases are from autoprefixer-core, Copyright 2013 Andrey Sitnik <andrey@sitnik.ru>.  Please see https://github.com/postcss/autoprefixer-core.
