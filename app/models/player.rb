class Player < ApplicationRecord
  belongs_to :team

  has_many :player_matches
  has_many :player_features, through: :player_matches

  validates_presence_of :name
  validates_presence_of :team

  scope :top, -> (player_feature, limit) do
    joins(:player_features)
      .where('player_features.id = ?', player_feature.id).order('COUNT(player_features.id) DESC')
      .group(:name)
      .limit(limit)
      .count
  end

  def add_feature(match_id, player_feature_id)
    PlayerMatch.create(player_id: self.id, match_id: match_id, player_feature_id: player_feature_id)
  end

  def reached_feature?(player_feature)
    self.team.matches.joins(:player_features)
      .where('player_features.id = ?', player_feature.id).last(5).present?
  end

  def self.select_top(player_feature, limit)
    Player.top(player_feature, limit)
  end
end