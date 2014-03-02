/*
 * Copyright (c) 2013 Fuse Elements, LLC. All rights reserved.
 */

// Bootstrap the application.
module.exports = Em.Application.create({
  // LOG_TRANSITIONS: window.ENV && window.ENV.DEVELOPMENT,
  LOG_TRANSITIONS_INTERNAL: window.ENV && window.ENV.DEVELOPMENT,

  // Override the default resolver logic
  Resolver: require('resolver')
});
