'use strict';

/* global $, Immutable, Store */

var OrderSuccessComponent = function (element) {
  this.$ = $(element);
  this.store = Store.sharedInstance;
  this.initialize();
};

OrderSuccessComponent.prototype.initialize = function () {
  this.store.update(function (state) {
    return state.set('Order', Immutable.Map());
  });
};
