class AddUsernameToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :user_username, :string
    remove_column :messages, :user_id
  end
end
