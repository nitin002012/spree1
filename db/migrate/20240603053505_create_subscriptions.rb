class CreateSubscriptions < ActiveRecord::Migration[7.1]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.integer :duration_in_month
      t.integer :status, null: false, default: 0
      t.timestamps
    end
  end
end
