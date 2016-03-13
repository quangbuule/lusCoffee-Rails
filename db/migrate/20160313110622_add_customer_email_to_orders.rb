class AddCustomerEmailToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :customer_email, :string, after: :customer_name
  end
end
