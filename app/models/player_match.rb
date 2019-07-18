class PlayerMatch < ApplicationRecord
  belongs_to :player
  belongs_to :match

  has_many :player_features
end
