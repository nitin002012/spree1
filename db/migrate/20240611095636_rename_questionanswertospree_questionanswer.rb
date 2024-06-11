class RenameQuestionanswertospreeQuestionanswer < ActiveRecord::Migration[7.1]
  def change
    rename_table :questionanswers, :spree_questionanswers

  end
end
