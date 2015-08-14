class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :image
      t.text :game_info
      t.string :game_publisher
      t.string :platform
      t.timestamps null: false
    end
  end
end