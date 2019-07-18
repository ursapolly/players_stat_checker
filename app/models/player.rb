class Player < ApplicationRecord
  belongs_to :team

  has_many :player_matches
  has_many :player_features, through: :player_matches

  scope :top_five, -> (player_feature) do
    joins(:player_features)
      .where('player_features.title = ?', player_feature.title)
      .group(:name).limit(5)
      .count.sort_by { |k, v| v}.reverse
  end

  def reached_feature?(player_feature)
    self.team.matches.joins(:player_features)
      .where('player_features.title = ?', player_feature.title).last(5).present?
  end

  def self.select_top_five(player_feature)
    Player.top_five(player_feature)
  end
end
