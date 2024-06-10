class CreateMyQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :my_questions do |t|
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
