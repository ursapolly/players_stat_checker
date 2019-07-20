FactoryBot.define do
  factory :player do
    association :team
    name { "Player_#{rand(999)}" }
  end
end