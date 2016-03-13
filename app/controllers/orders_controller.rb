class OrdersController < ApplicationController
  def show
    @order = Order.new
    @dishes = dishes
    @total = @dishes.inject(0) {|total, dish| total + dish.price * dish.count} + 20e3
  end

  def create
    @order = Order.new(order_params)
    @order.dishes = dishes_params.to_s

    if @order.save
      redirect_to action: :success

    else
      @dishes = dishes
      render :show
    end
  end

  private
    def order_params
      params.require(:order).permit(:customer_name, :customer_phone, :customer_address)
    end

    def dishes_params
      params.require(:d)
    end

    def dishes
      Dish.find(dishes_params.map { |k, v| k }).each { |dish|
        dish.count = dishes_params[dish.id.to_s].to_i
      }
    end
end
