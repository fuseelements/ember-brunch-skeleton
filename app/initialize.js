/**
 * Copyright (c) 2012 Fuse Elements, LLC. All rights reserved.
 */

var app = require('app');

// Bind App to window.App (or a different property name) for use in the Handlebars templates.
window.App = app;

require('models');
require('controllers');
require('views');
require('router');

app.initialize();

