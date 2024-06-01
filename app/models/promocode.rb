class Promocode < ApplicationRecord
    validates :name , :code , :description , :expiration ,presence:true
end
