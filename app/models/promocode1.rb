class Promocode1 < ApplicationRecord
  validates :name, :code, :description, :expiration, :usage, :users1, presence:true

end
