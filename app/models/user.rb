class User < ApplicationRecord
  has_many :surveys, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
