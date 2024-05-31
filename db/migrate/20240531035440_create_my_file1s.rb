class CreateMyFile1s < ActiveRecord::Migration[7.1]
  def change
    create_table :my_file1s do |t|
      t.string :file_name
      t.string :file_path
      t.string :file_size

      t.timestamps
    end
  end
end
