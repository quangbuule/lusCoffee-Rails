class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :section
      t.string :image_url

      t.timestamps null: false
    end
  end
end
