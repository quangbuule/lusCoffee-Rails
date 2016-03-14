class AddAveragePointToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :average_point, :float, null: false, default: 0
  end
end
