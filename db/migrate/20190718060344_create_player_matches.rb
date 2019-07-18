class CreatePlayerMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :player_matches do |t|
      t.integer :player_id, index: true
      t.integer :match_id, index: true

      t.timestamps
    end
  end
end
