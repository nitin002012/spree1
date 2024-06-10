# app/validators/json_validator.rb
class JsonValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    begin
      JSON.parse(value.to_json)
    rescue JSON::ParserError
      record.errors.add(attribute, "must be a valid JSON")
    end
  end
end
