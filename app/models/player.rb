class Player < ApplicationRecord
  belongs_to :team

  has_many :player_matches
  has_many :player_features, through: :player_matches
end
