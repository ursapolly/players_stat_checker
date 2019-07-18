class Match < ApplicationRecord
  has_many :player_matches
  has_many :player_features, through: :player_matches

  has_many :team_matches
  has_many :teams, through: :team_matches
end
