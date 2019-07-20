class PlayerFeature < ApplicationRecord
  has_many :player_matches

  validates_presence_of :title
  validates_uniqueness_of :title
end
