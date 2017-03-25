# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

require 'faker'
User.destroy_all
Team.destroy_all
Event.destroy_all
60.times do
  User.create({
    username: Faker::GameOfThrones.character,
    email: Faker::Internet.email,
    password: 'password',
    phase: Rand(1..3)
    })
end

10.times do
  user = User.all.sample
  event = Event.all.sample
  user.teams.create!({
      name: Faker::Team.name,
      user_id: user.id,
      event_id: event.id
      })
end