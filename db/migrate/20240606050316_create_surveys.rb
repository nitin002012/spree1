class CreateSurveys < ActiveRecord::Migration[7.1]
  def change
    create_table :surveys do |t|
      t.json :questions

      t.timestamps
    end
  end
end
