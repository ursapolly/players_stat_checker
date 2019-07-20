FactoryBot.define do
  factory :team_match do
    association :team
    association :match
  end
end