class DishesController < ApplicationController
  def show
    @dish = Dish.find(params[:id])
    @dish.increment :view_count
    @dish.save
  end
end
