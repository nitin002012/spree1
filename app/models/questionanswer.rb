class Questionanswer < ApplicationRecord
  validates :title, :description, :schema, :options, presence:true
end
