class DishesController < ApplicationController
  def show
    @dish = Dish.find(params[:id])
    @dish.increment :view_count
    @dish.save
    @review = Review.new
    @review.dish = @dish
  end

  def review
    @review = Review.create(review_params)
    @dish = Dish.find(review_params[:dish_id])

    if @review.point > 0
      @dish.average_point = (@dish.point_count * @dish.average_point + @review.point) / (@dish.point_count + 1)
      @dish.point_count += 1
      @dish.save
    end

    redirect_to action: :show
  end

  private
    def review_params
      params.require(:review).permit(:user_name, :content, :point, :dish_id)
    end
end
