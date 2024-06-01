class CreatePromocodes < ActiveRecord::Migration[7.1]
  def change
    create_table :promocodes do |t|
      t.string :name
      t.string :code
      t.string :description
      t.string :expiration

      t.timestamps
    end
  end
end
