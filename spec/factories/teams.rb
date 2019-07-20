FactoryBot.define do
  factory :team do
    name { "Team_#{rand(999)}" }
  end
end