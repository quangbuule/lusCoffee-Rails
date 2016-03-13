'use strict';

/* global $, Store, Routes */

var OrderButtonComponent = function (element) {
  this.$ = $(element);
  this.store = Store.sharedInstance;

  this.handleStoreChange = this.handleStoreChange.bind(this);
  this.showOrder = this.showOrder.bind(this);

  this.initialize();
  this.store.subscribe(this.handleStoreChange);
};

OrderButtonComponent.prototype.initialize = function () {
  var orderCount = this.getOrderCount();
  this.$.find('.count').html(orderCount);

  if( orderCount > 0) {
    this.$.addClass('has-order');
  }

  // Event listeners
  this.$.find('.continue-btn').on('click', this.showOrder);
};

OrderButtonComponent.prototype.handleStoreChange = function (e, prevState) {
  this.$.find('.count').html(this.getOrderCount());

  if (this.getOrderCount(prevState) > 0 &&
      this.getOrderCount() === 0) {
    this.$.removeClass('has-order');
  }

  if (this.getOrderCount() > 0) {
    this.$.addClass('has-order');
  }
};

OrderButtonComponent.prototype.getOrderCount = function (state) {
  if (state === undefined) {
    state = this.store.state;
  }

  return state.get('Order').reduce(function (count, dishOrder) {
    return count + dishOrder;
  }, 0);
};

OrderButtonComponent.prototype.showOrder = function () {
  window.location = Routes.order_path({
    d: this.store.state.get('Order').toJSON()
  });
};
