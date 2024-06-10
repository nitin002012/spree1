class CreatePromocode1s < ActiveRecord::Migration[7.1]
  def change
    create_table :promocode1s do |t|
      t.string :name
      t.string :code
      t.string :description
      t.string :expiration
      t.string :usage
      t.string :users1

      t.timestamps
    end
  end
end
