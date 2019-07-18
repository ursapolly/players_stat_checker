2.times do
  Team.create(
    name: Faker::Sports::Football.team
  )
end

10.times do
  Player.create(
    name: Faker::Sports::Football.player,
    team_id: Team.first.id
  )

  Player.create(
    name: Faker::Sports::Football.player,
    team_id: Team.last.id
  )
end

5.times do
  Match.create(
    title: Faker::Creature::Animal.name
  )
end

Match.all.each do |match|
  TeamMatch.create(
    team_id: Team.first.id,
    match_id: match.id
  )

  TeamMatch.create(
    team_id: Team.last.id,
    match_id: match.id
  )
end


feature_list = ['Scored 5 goals', 'Ran 10 km', 'Passed 50% of balls']

feature_list.each do |item|
  PlayerFeature.create(
    title: item
  )
end

Player.all.each do |player|
  PlayerMatch.create(
    player_id: player.id,
    match: Match.find(rand(1..5)),
    player_feature: PlayerFeature.find(rand(1..3))
  )
end