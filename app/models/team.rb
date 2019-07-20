class Team < ApplicationRecord
  has_many :players
  has_many :team_matches
  has_many :matches, through: :team_matches

  validates_presence_of :name
  validates_uniqueness_of :name

  def select_top(player_feature, limit)
    players.top(player_feature, limit)
  end
end
