# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.create!(
    name: "joe",
    email: "joe@joe.com",
    password: "1234",
    password_confirmation: "1234"
    )

user2 = User.create!(
    name: "tom",
    email: "tom@tom.com",
    password: "1234",
    password_confirmation: "1234"
    )

user3 = User.create!(
    name: "john",
    email: "john@john.com",
    password: "1234",
    password_confirmation: "1234"
    )


voyage1 = Voyage.create!(
    title: "Voyage1",
    location: "Toronto",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lectus mauris, elementum id libero fermentum, cursus faucibus dui. Sed lacinia, nunc ut vehicula gravida, mauris lacus efficitur libero, eget porttitor ante lorem eu sem. Cras aliquam, nibh ut mattis placerat, quam diam convallis lacus, quis suscipit felis nunc eu lectus",
    start_time: DateTime.parse("2017-09-30 11:11:00"),
    end_time: DateTime.parse("2017-10-30 11:11:00"),
    capacity: 10,
    boat_image_url:'https://imgs-tuts-dragoart-386112.c.cdn77.org/how-to-draw-a-pirate-ship_1_000000001308_5.jpg',
    vessel_type: "pirate ship",
    captain: user1
    )

voyage2 = Voyage.create!(
    title: "Voyage2",
    location: "Los Angeles",
    description: "Proin gravida libero in augue rutrum, in tincidunt turpis consequat. Suspendisse tempor semper augue. Integer nec facilisis felis. Sed sed efficitur neque. Cras iaculis molestie nulla, ac aliquam libero congue a.",
    start_time: DateTime.parse("2017-09-30 11:11:00"),
    end_time: DateTime.parse("2017-10-30 11:11:00"),
    capacity: 10,
    boat_image_url:'http://1.bp.blogspot.com/_Y1xTrEn3pwg/S-wuQW-9IMI/AAAAAAAACLo/HVIXSLoDDAY/s1600/muskrat+canoe+r.jpg',
    vessel_type: "canoe",
    captain: user2
    )

voyage3 = Voyage.create!(
    title: "Voyage3",
    location: "Vancouver",
    description: "Cras rhoncus sem sed venenatis finibus. Suspendisse imperdiet facilisis orci sed luctus. Aenean at magna eget augue semper vestibulum sit amet vel nunc. Maecenas aliquet vestibulum quam semper lobortis. Aenean rutrum lobortis lorem. Maecenas ut vehicula dui. In pharetra sodales leo eu dignissim.",
    start_time: DateTime.parse("2017-09-30 11:11:00"),
    end_time: DateTime.parse("2017-10-30 11:11:00"),
    capacity: 10,
    boat_image_url:'https://faithdlc.files.wordpress.com/2008/05/raft-boy.gif',
    vessel_type: "raft",
    captain: user3
    )

reservation1 = Reservation.create!(
    passenger: user1,
    voyage_id: voyage2.id
    )

reservation2 = Reservation.create!(
    passenger: user3,
    voyage_id: voyage3.id
    )

reservation3 = Reservation.create!(
    passenger: user1,
    voyage_id: voyage2.id
    )
