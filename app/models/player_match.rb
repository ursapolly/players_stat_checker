class PlayerMatch < ApplicationRecord
  belongs_to :player
  belongs_to :match
  belongs_to :player_feature, optional: true
end
