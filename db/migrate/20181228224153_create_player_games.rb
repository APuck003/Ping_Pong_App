class CreatePlayerGames < ActiveRecord::Migration[5.2]
  def change
    create_table :player_games do |t|
      t.integer :player_id
      t.integer :game_id
      t.integer :score

      t.timestamps
    end
  end
end
