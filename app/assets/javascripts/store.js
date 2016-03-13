'use strict';

/* global Immutable, $ */

var Store = function (eventName) {
  this._eventName = eventName;
  this.state = this.getInitialState();
};

Store.prototype.getInitialState = function () {
  try {
    return Immutable.fromJS(JSON.parse(localStorage.storeState));
  } catch (e) {
    return Immutable.Map({
      Order: Immutable.Map({})
    });
  }
};

Store.prototype.update = function (updater) {
  var prevState = this.state;

  this.state = updater(this.state);
  /* eslint-disable no-console */
  console.group('Updating store');
  console.info('%cBefore state: ', 'font-weight: bold');
  console.info(prevState.toJSON());
  console.info('%cAfter state: ', 'font-weight: bold');
  console.info(this.state.toJSON());
  console.groupEnd();
  /* eslint-enable no-console */

  $(window).trigger(this._eventName, [ prevState ]);
  localStorage.storeState = JSON.stringify(this.state.toJSON());
};

Store.prototype.subscribe = function (handler) {
  $(window).on(this._eventName, handler);
};

Store.prototype.unsubscribe = function (handler) {
  $(window).off(this._eventName, handler);
};

Store.sharedInstance = new Store('store:change');
