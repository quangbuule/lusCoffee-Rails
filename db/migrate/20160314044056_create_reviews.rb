class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :user_name
      t.string :user_avatar
      t.integer :point,  null: false, default: 0
      t.string :content
      t.references :dish, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
