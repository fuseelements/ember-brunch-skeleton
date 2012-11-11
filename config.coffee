fs = require 'fs'
path = require 'path'

# See docs at http://brunch.readthedocs.org/en/latest/config.html.

exports.config =
  files:
    javascripts:
      defaultExtension: 'js',
      joinTo:
        'javascripts/app.js': /^app/
        'javascripts/vendor.js': /^vendor/
        'test/javascripts/test.js': /^test(\/|\\)(?!vendor)/
        'test/javascripts/test-vendor.js': /^test(\/|\\)(?=vendor)/

      order:
        before: [
          'vendor/scripts/console-helper.js',
          'vendor/scripts/jquery-1.8.2.js',
          'vendor/scripts/handlebars-1.0.rc.1.js',
          'vendor/scripts/ember-1.0.0-pre.2.js',
          'vendor/scripts/bootstrap-2.2.1.js'
        ]

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^(app|vendor)/
        'test/stylesheets/test.css': /^test/
      order:
        before: ['vendor/styles/bootstrap-2.2.1.css']

    templates:
      precompile: true
      defaultExtension: 'hbs'
      joinTo:
        'javascripts/app.js': /^app/

  server:
    port: 3333
    base: '/'
    run: no

  jshint:
    pattern: /^(app|test)\/(?!vendor\/).*\.js$/
    options:
      bitwise: true
      camelcase: true
      curly: true
      eqeqeq: true
      forin: true
      immed: true
      indent: 2
      latedef: true
      newcap: true
      noarg: true
      noempty: true
      nonew: true
      plusplus: true
      quotmark: true
      regexp: true
      undef: true
      unused: false
      strict: true
      trailing: true
      browser: true
      es5: true
      jquery: true
      node: true
    globals:
      describe: true
      chai: true
      it: true
      Em: true
      jQuery: true
