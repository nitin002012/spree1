class CreateMyFiles < ActiveRecord::Migration[7.1]
  def change
    create_table :my_files do |t|

      t.timestamps
    end
  end
end
