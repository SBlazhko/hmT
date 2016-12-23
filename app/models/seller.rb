class Seller < ApplicationRecord

  has_many :orders
  has_many :clients, through: :orders

end
