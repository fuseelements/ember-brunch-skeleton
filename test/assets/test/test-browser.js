/**
 * Copyright (c) 2012 Fuse Elements, LLC. All rights reserved.
 */

/*global mocha:false, $:false */

mocha.setup({ui: 'bdd', globals:['XMLHttpRequest']});

$().ready(function() {
  'use strict';

  // Is the div to attach view DOM tests using `view.appendTo('#fixture')`.
  // Remember to view.destroy().
  $('<div id="fixture" style="display:none;"><div>').appendTo('body');
});

