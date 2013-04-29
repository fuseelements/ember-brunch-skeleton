# This file will be automatically required when using `brunch test` command.
chai = require 'chai'
sinon = require 'sinon'
sinonChai = require 'sinon-chai'
chai.use sinonChai

# Patch in support for using the node.js jsdom. See https://github.com/cjohansen/Sinon.JS/issues/125
global.sinon = sinon
require 'sinon/lib/sinon/util/fake_xml_http_request'

module.exports =
  chai: chai
  expect: chai.expect
  sinon: sinon
#  should: chai.should()
