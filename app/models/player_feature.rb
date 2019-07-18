class PlayerFeature < ApplicationRecord
  has_many :player_matches

  def add_feature_to_player(player, match)
    PlayerMatch.create(player_id: player, match_id: match, player_feature_id: self.id)
  end
end
