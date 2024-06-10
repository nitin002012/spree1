class CreateQuestionnaires < ActiveRecord::Migration[7.1]
  def change
    create_table :questionnaires do |t|
      t.string :title
      t.text :description
      t.json :schema
      t.json :options

      t.timestamps
    end
  end
end
