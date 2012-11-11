/**
 * Copyright (c) 2012 Fuse Elements, LLC. All rights reserved.
 */

'use strict';

var app = require('app');

app.Router = Em.Router.extend({

  enableLogging: true,

  root: Em.Route.extend({

    index: Em.Route.extend({
      route: '/'
    })
  })
});

