class PortalController < ApplicationController
  def index
    @dishes = Dish.all
    @dishes = @dishes.where(section: Dish.sections[params[:section].to_sym]) if params[:section]
    @dishes = @dishes.where("name ILIKE ?", "%#{params[:q]}%") if params[:q]

    @dishes = case true
      when params[:sort] == :view_desc.to_s
        @dishes.order(view_count: :desc)
      when params[:sort] == :price_desc.to_s
        @dishes.order(price: :desc)
      when params[:sort] == :price_asc.to_s
        @dishes.order(price: :asc)
      when params[:sort] == :name_desc.to_s
        @dishes.order(name: :desc)
      when params[:sort] == :name_asc.to_s
        @dishes.order(name: :asc)
      else
        @dishes.order(created_at: :desc)
      end
  end

  def contact_us
  end
end
