'use strict';

function resolveThing(parsedName, includeTypeInName) {
  var thingName = parsedName.fullNameWithoutType.underscore() + (includeTypeInName ? '_' + parsedName.type : ''),
      thing;
  // try to look up in app/<type>s
  try {
    thing = require(parsedName.type + 's/' + thingName);
  } catch (e) {
  }
  return thing;
}

/**
 * Extension of the default Ember resolver. See http://emberjs.com/api/classes/Ember.DefaultResolver.html
 * for how the default resolver does lookups.
 */
module.exports = Ember.DefaultResolver.extend({
  resolveRoute: function (parsedName) {
    var route = this._super(parsedName);
    return route || resolveThing(parsedName, true);
  },

  resolveController: function (parsedName) {
    var controller = this._super(parsedName);
    return controller || resolveThing(parsedName, true);
  },

  resolveView: function (parsedName) {
    var view = this._super(parsedName);
    return view || resolveThing(parsedName, true);
  },

  resolveModel: function (parsedName) {
    var model = this._super(parsedName);
    return model || resolveThing(parsedName, false);
  },

  resolveComponent: function (parsedName) {
    return resolveThing(parsedName, true);
  }
});