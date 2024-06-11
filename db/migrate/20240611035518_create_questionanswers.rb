class CreateQuestionanswers < ActiveRecord::Migration[7.1]
  def change
    create_table :questionanswers do |t|
      t.string :title
      t.string :description
      t.json :schema
      t.json :options

      t.timestamps
    end
  end
end
