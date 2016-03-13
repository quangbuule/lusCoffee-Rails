'use strict';

/* global $ */

var OrderFormComponent = function (element) {
  this.$ = $(element);
  this.initialize();
};

OrderFormComponent.prototype.initialize = function() {
  this.$.find('.dish').each(function (idx, dishEl) {
    var $dish = $(dishEl);
    var $countTxt = $dish.find('.count-txt');

    $dish.find('.eliminate-btn').on('click', function () {
      var count = Math.max(Number($countTxt.val()) - 1, 0);
      $countTxt.val(count);
    });

    $dish.find('.add-btn').on('click', function () {
      var count = Number($countTxt.val()) + 1;
      $countTxt.val(count);
    });
  });
};
