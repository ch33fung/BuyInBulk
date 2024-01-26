class Order < ApplicationRecord
  belongs_to :user
  has_one :shipping_address,class_name: "Address"
  has_one :billing_address,class_name: "Address"
end
