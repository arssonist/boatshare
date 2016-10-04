# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.create!(name: "joe", email: "joe@joe.com", password: "1234", password_confirmation: "1234")
user2 = User.create!(name: "tom", email: "tom@tom.com", password: "1234", password_confirmation: "1234")
user3 = User.create!(name: "john", email: "john@john.com", password: "1234", password_confirmation: "1234")


voyage1 = Voyage.create!(title: "Voyage1", location: "Toronto", start_time: DateTime.parse("2016-09-30 11:11:00"), capacity: 10,vessel_type: "pirate ship", captain: user1)
voyage2 = Voyage.create!(title: "Voyage2", location: "Los Angeles", start_time: DateTime.parse("2016-09-30 11:11:00"), capacity: 10, vessel_type: "sail boat", captain: user2)
voyage3 = Voyage.create!(title: "Voyage3", location: "Vancouver", start_time: DateTime.parse("2016-09-30 11:11:00"), capacity: 10, vessel_type: "motor boat", captain: user3)

reservation1 = Reservation.create!(passenger: user2, voyage_id: voyage2.id)
reservation2 = Reservation.create!(passenger: user1, voyage_id: voyage3.id)
reservation3 = Reservation.create!(passenger: user3, voyage_id: voyage2.id)
