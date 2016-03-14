'use strict';

/* global $ */

var ReviewBoxComponent = function (element) {
  this.$ = $(element);
  this.point = 0;
  this.initialize();
};

ReviewBoxComponent.prototype.initialize = function() {
  var $stars = this.$.find('.star');
  var $point = this.$.find('.point');

  this.$.find('.star').each(function (idx, el) {
    $(el).on('mouseover', function () {
      $stars.removeClass('active');
      $stars.slice(0, idx + 1).addClass('active');
    });

    $(el).on('click', function () {
      this.point = idx + 1;
    }.bind(this));
  }.bind(this));

  $point.on('mouseleave', function () {
    $stars.removeClass('active');
    $stars.slice(0, this.point).addClass('active');
  }.bind(this));
};
