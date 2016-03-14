class DishesController < ApplicationController
  def show
    @dish = Dish.find(params[:id])
    @dish.increment :view_count
    @dish.save
    @review = Review.new
    @review.dish = @dish
  end

  def review
    @review = Review.new(review_params)

    @review.save
    redirect_to action: :show
  end

  private
    def review_params
      params.require(:review).permit(:user_name, :content, :dish_id)
    end
end
