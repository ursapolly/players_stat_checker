class Team < ApplicationRecord
  has_many :players
  has_many :team_matches
  has_many :matches, through: :team_matches

  def select_top_five(player_feature)
    players.top_five(player_feature)
  end
end
