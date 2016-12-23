class Client < ApplicationRecord
  
  has_many :orders
  has_many :sellers, through: :orders

end
