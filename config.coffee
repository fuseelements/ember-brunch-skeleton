exports.config =
  modules:
    addSourceURLs: true

  conventions:
    ignored: /^app(\/|\\)styles(\/|\\)_.*\.styl/

  files:
    javascripts:
      joinTo:
        'scripts/app.js': /^app/
        'scripts/vendor.js': /^vendor/
        'test/scripts/test.js': /^test(\/|\\)(?!vendor)/
        'test/scripts/test-vendor.js': /^test(\/|\\)(?=vendor)/

      order:
        before: [
          'vendor/scripts/bootstrap.js'
          'vendor/scripts/handlebars-1.0.rc.3.js'
        ]

    stylesheets:
      joinTo:
        'styles/app.css': /^(app|vendor)/
        'test/styles/test.css': /^test/
      order:
        before: ['vendor/styles/bootstrap.css']

    templates:
      precompile: true
      root: 'templates/'
      defaultExtension: 'hbs'
      joinTo:
        'scripts/app.js': /^app(\/|\\)templates/

  server:
    port: 3333
    base: '/'
    run: no

  jshint:
    pattern: /^(app|test)(\/|\\)(?!vendor).*\.js$/
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
      DS: false
      Em: false
      Ember: false
      Handlebars: false
      jQuery: false
      $: false
      chai: false
      describe: false
      it: false
      after: false
      before: false
