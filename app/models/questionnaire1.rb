class Questionnaire1 < ApplicationRecord
  validates :title, :description, :schema, :options, presence:true
end
