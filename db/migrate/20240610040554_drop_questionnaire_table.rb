class DropQuestionnaireTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :questionnaires

  end
end
