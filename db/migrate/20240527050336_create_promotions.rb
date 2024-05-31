class CreatePromotions < ActiveRecord::Migration[7.1]
  def change
    create_table :promotions do |t|
      t.string :code
      t.text :description
      t.decimal :discount
      t.datetime :expiration_date

      t.timestamps
    end
  end
end
