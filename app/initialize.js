/*
 * Copyright (c) 2013 Fuse Elements, LLC. All rights reserved.
 */

'use strict';

var App = require('app');

/**
 * Load pre-compiled templates to register them with Ember.TEMPLATES
 * using brunch 1.7's require.list().
 */
function registerTemplates() {
  var r = /^templates\/.*/,
      names = window.require.list();

  names.forEach(function (name) {
    if (r.test(name)) {
      require(name);
    }
  });
}

// Bind App to window.App (or a different property name) for use in the Handlebars templates.
window.App = App;

registerTemplates();

require('routes/map');