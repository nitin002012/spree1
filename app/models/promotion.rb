class Promotion < ApplicationRecord
  validates :code, presence: true, uniqueness: true
  validates :description, presence: true
  validates :discount, numericality: { greater_than: 0 }
  validates :expiration_date, presence: true
end
