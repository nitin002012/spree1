# app/models/question.rb
class Question < ApplicationRecord
  validates :title, :definition, presence: true
  validate :valid_json_format

  private

  def valid_json_format
    validate_json_attribute(:schema)
    validate_json_attribute(:options)
  end

  def validate_json_attribute(attribute)
    value = send(attribute)
    if value.present?
      begin
        JSON.parse(value)
      rescue JSON::ParserError => e
        errors.add(attribute, "is not a valid JSON: #{e}")
      end
    end
  end
end
