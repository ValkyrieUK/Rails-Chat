class AddUsernameToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :user_username, :string
  end
end
