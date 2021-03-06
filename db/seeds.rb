# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'
User.destroy_all
Team.destroy_all
Event.destroy_all


60.times do
  User.create({
    name: Faker::GameOfThrones.character,
    email: Faker::Internet.email,
    password: 'password',
    phase: rand(1..3)
    })
end

10.times do
  team = Team.all.sample
  Event.create({
    name: Faker::StarWars.character,
    location: Faker::Address.city,
    date: Faker::Date.between(2.days.ago, Date.today),
    reg_fee: Faker::Commerce.price,
    description: Faker::Hipster.paragraph,
    team_id: rand(1...10)
    })
end

10.times do
  user = User.all.sample
  event = Event.all.sample
  user.teams.create!({
    name: Faker::Team.name,
    event_id: event.id
    })
end

10.times do 
  team = Team.all.sample
  user = User.all.sample
  user.team_users.create!({
    team_id: team.id
    })



end

10.times do 
  event = Event.all.sample
  team = Team.all.sample
  team.event_teams.create!({
    event_id: event.id
    })

end
