class Order < ApplicationRecord
  
  belongs_to :seller
  belongs_to :client

end
