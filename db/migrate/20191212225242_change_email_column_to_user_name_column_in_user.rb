class ChangeEmailColumnToUserNameColumnInUser < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :email, :user_name
  end
end
