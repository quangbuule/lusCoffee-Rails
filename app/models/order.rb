class Order < ActiveRecord::Base
  validates :dishes, :customer_name, :customer_email, :customer_phone, :customer_address, presence: true
  validates :customer_email, email: true
end
