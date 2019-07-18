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

Player.all.each do |player|
  PlayerMatch.create(
    player_id: player.id,
    match: Match.find(rand(1..5))
  )
end

feature_list = ['Scored 5 goals', 'Ran 10 km', 'Passed 50% of balls']

PlayerMatch.all.each do |pm|
  feature_list.each do |item|
    PlayerFeature.create(
      title: item,
      player_match_id: pm.id
    )
  end
end