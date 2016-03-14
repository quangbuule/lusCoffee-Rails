class AddPointCountToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :point_count, :integer, null: false, default: 0
  end
end
