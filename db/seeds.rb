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
    match: Match.find(rand(1..5))
  )
end

#  Данные для проверки метода, который выводит топ-5 по конкретному показателю
10.times do
  PlayerMatch.create(
    player_id: 2,
    match_id: 2,
    player_feature_id: 1
  )
end

5.times do
  PlayerMatch.create(
    player_id: 3,
    match_id: 2,
    player_feature_id: 1
  )
end

4.times do
  PlayerMatch.create(
    player_id: 4,
    match_id: 2,
    player_feature_id: 1
  )
end

3.times do
  PlayerMatch.create(
    player_id: 5,
    match_id: 2,
    player_feature_id: 1
  )
end

2.times do
  PlayerMatch.create(
    player_id: 7,
    match_id: 2,
    player_feature_id: 1
  )
end

8.times do
  PlayerMatch.create(
    player_id: 8,
    match_id: 2,
    player_feature_id: 1
  )
end