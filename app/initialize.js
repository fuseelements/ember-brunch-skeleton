/*
 * Copyright (c) 2013 Fuse Elements, LLC. All rights reserved.
 */

'use strict';

var App = require('app');

// Bind App to window.App (or a different property name) for use in the Handlebars templates.
window.App = App;

require('templates');
require('models');
require('controllers');
require('views');
require('routes');
