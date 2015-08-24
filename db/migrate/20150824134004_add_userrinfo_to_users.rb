class AddUserrinfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_info, :string
    remove_column :users, :uesr_info, :string
  end
end
