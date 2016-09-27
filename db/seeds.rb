# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  user1 = User.create!(name: "joe", email: "joe@joe.com")
  user2 = User.create!(name: "tom", email: "tom@tom.com")
  user3 = User.create!(name: "john", email: "john@john.com")

  voyage1 = Voyage.create!(title: "IDK", captain: user1)
  voyage2 = Voyage.create!(title: "IDK2", captain: user2)
  voyage3 = Voyage.create!(title: "IDK3", captain: user3)

  reservation1 = Reservation.create!(passenger: user1, voyage_id:1)
  reservation2 = Reservation.create!(passenger: user2, voyage_id:2)
  
