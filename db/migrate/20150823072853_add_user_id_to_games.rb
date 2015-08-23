class AddUserIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :user_id, :integer
    add_column :users, :user_info, :srting
  end
end
