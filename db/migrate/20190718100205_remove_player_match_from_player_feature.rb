class RemovePlayerMatchFromPlayerFeature < ActiveRecord::Migration[5.2]
  def change
    remove_reference :player_features, :player_match, foreign_key: true
  end
end
