# db/migrate/20240606052702_add_user_to_surveys.rb
class AddUserToSurveys < ActiveRecord::Migration[7.1]
  def change
    add_reference :surveys, :user, foreign_key: true, null: true

    reversible do |dir|
      dir.up do
        Survey.reset_column_information
        default_user = User.first # Or some other logic to determine the default user
        Survey.update_all(user_id: default_user.id)
      end
    end

    change_column_null :surveys, :user_id, false
  end
end
