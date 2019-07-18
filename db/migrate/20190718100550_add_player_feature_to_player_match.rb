class AddPlayerFeatureToPlayerMatch < ActiveRecord::Migration[5.2]
  def change
    add_reference :player_matches, :player_feature, foreign_key: true
  end
end
