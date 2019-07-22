require 'rails_helper'

RSpec.describe Player, type: :model do

  describe '#add_feature' do
    let(:team) { FactoryBot.create :team }

    let(:player) { FactoryBot.create :player, team: team }
    let(:match) { FactoryBot.create :match }
    let(:feature) { FactoryBot.create :player_feature }

    it 'should add feature to player' do
      pf = player.add_feature(match.id, feature.id)
      expect(player.player_features.ids).to include(pf.id)
    end
  end
end