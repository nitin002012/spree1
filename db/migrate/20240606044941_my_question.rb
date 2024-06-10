class MyQuestion < ActiveRecord::Migration[7.1]
  def change
    drop_table :my_questions

  end
end
