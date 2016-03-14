class ChangePointDefaultOfReviews < ActiveRecord::Migration
  def change
    change_column :reviews, :point, :integer, null: false, default: 0
  end
end
