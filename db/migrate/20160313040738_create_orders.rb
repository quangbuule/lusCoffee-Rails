class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_name
      t.string :customer_address
      t.string :customer_phone
      t.string :dishes

      t.timestamps null: false
    end
  end
end
