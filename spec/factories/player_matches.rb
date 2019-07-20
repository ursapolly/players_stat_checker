FactoryBot.define do
  factory :player_match do
    association :player
    association :match
    association :player_feature
  end
end