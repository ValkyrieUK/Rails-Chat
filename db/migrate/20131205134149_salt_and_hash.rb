class SaltAndHash < ActiveRecord::Migration
  def removing_password
    remove_column :user, :password
    remove_column :user, :password_confirmation
    add_column :user, :password_hash
    add_column :user, :password_salt
  end
end
