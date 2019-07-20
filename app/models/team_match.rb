class TeamMatch < ApplicationRecord
  belongs_to :team
  belongs_to :match

  validates_presence_of :team
  validates_presence_of :match
end
