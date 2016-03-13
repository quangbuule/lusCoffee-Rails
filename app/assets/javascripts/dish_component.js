'use strict';

/* global $, Store */

var DishComponent = function (element) {
  // Setting properties
  this.$ = $(element);
  this.store = Store.sharedInstance;
  this.dishId = this.$.attr('aria-dish-id');

  // Binding
  this.decreaseDishCount = this.decreaseDishCount.bind(this);
  this.increaseDishCount = this.increaseDishCount.bind(this);
  this.handleStoreChange = this.handleStoreChange.bind(this);

  // Event handlers
  this.initialize();
  this.store.subscribe(this.handleStoreChange);
};

DishComponent.prototype.initialize = function () {
  var orderCount = this.getOrderCount();

  if (orderCount !== undefined) {
    this.$.addClass('has-order');
    this.$.find('.order-counter .count-txt').val(orderCount);
  }

  // Event listeners
  this.$.find('.order-btn').on('click', this.increaseDishCount);
  this.$.find('.order-counter .eliminate-btn').on('click', this.decreaseDishCount);
  this.$.find('.order-counter .add-btn').on('click', this.increaseDishCount);
};

DishComponent.prototype.handleStoreChange = function (e, prevState) {
  this.$.find('.order-counter .count-txt').val(this.getOrderCount() || 0);

  if (this.getOrderCount(prevState) !== undefined &&
      this.getOrderCount() === undefined) {
    this.$.removeClass('has-order');
  }

  if (this.getOrderCount() !== undefined) {
    this.$.addClass('has-order');
  }
};

DishComponent.prototype.getOrderCount = function (state) {
  if (state === undefined) {
    state = this.store.state;
  }

  return state.getIn([ 'Order', this.dishId ]);
};

DishComponent.prototype.decreaseDishCount = function () {
  this.store.update(function (state) {
    state = state.updateIn([ 'Order', this.dishId ], function (count) {
      return (count || 1) - 1;
    });

    if (this.getOrderCount(state) === 0) {
      state = state.deleteIn([ 'Order', this.dishId ]);
    }

    return state;
  }.bind(this));
};

DishComponent.prototype.increaseDishCount = function () {
  this.store.update(function (state) {
    return state.updateIn([ 'Order', this.dishId ], function (count) {
      return (count || 0) + 1;
    });
  }.bind(this));
};
