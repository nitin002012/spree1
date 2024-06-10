module Spree
  class Subscription < ApplicationRecord
  scope :active, -> { where(status: :active) }
  enum status: { inactive: 0, active: 1 }
  end
  end
