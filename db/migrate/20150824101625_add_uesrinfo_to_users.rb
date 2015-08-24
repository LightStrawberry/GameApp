class AddUesrinfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uesr_info, :string
  end
end
