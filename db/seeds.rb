# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

MyQuestion.create(
  question: "this is a demo question 1",
  answer: "this is a demo answer 1"
)

user = User.create(name: "John Doe", email: "john.doe@example.com")
survey = user.surveys.create(questions: [])


survey = Survey.create(questions: [])
survey.add_question({ text: "What is your favorite color?", type: "multiple_choice", options: ["Red", "Blue", "Green"] })
survey.save
