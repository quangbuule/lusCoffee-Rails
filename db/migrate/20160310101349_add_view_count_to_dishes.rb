class AddViewCountToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :view_count, :integer, null: false, default: 0
  end
end
