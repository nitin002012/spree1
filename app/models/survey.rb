class Survey < ApplicationRecord
  belongs_to :user

  validates :questions, presence: true, json: true

  def add_question(question)
    questions_array = questions || []
    questions_array << question
    self.questions = questions_array
  end

  def remove_question(question)
    questions_array = questions || []
    questions_array.delete(question)
    self.questions = questions_array
  end
end
