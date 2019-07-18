class CreateTeamMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :team_matches do |t|
      t.integer :team_id, index: true
      t.integer :match_id, index: true

      t.timestamps
    end
  end
end
