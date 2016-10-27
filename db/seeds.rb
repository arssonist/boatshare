# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
#
# #consider Sean's suggestion from Oct 6 of changing user1 to captain 1, and mkaing three more seeeds where 3 are captains and three are passengers. Then, when calling them in other seeds (voyage for eg) you will understand the validation conflict more easily
#
# user1 = User.create!(
#     name: "Luke Fletcher",
#     email: "luke@gilligan.com",
#     user_image_url:'https://upload.wikimedia.org/wikipedia/commons/8/80/A_boat_man_with_his_small_boat.jpg',
#     password: "1234",
#     password_confirmation: "1234"
#     )
#
# user2 = User.create!(
#     name: "Jane Adam",
#     email: "jane@gilligan.com",
#     password: "1234",
#     user_image_url:'http://justifiedgrid.com/wp-content/gallery/life/people/166193831.jpg',
#     password_confirmation: "1234"
#     )
#
# user3 = User.create!(
#     name: "Jonathan Holburn",
#     email: "jonathan@gilligan.com",
#     password: "1234",
#     user_image_url:'http://www.voyageoftherascal.com/uploads/2/4/3/5/24351318/291492_orig.jpg',
#     password_confirmation: "1234"
#     )
#
#
# voyage1 = Voyage.create!(
#     title: "Sailing the Saronic Gulf",
#     location: "Poros, Greece",
#     description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean lectus mauris, elementum id libero fermentum, cursus faucibus dui. Sed lacinia, nunc ut vehicula gravida, mauris lacus efficitur libero, eget porttitor ante lorem eu sem. Cras aliquam, nibh ut mattis placerat, quam diam convallis lacus, quis suscipit felis nunc eu lectus",
#     start_time: DateTime.parse("2017-09-30 11:11:00"),
#     end_time: DateTime.parse("2017-10-30 11:11:00"),
#     capacity: 10,
#     voyage_image_url:"http://i67.tinypic.com/a9mhw.jpg",
#     boat_image_url:'http://i63.tinypic.com/dqp2lg.jpg',
#     vessel_type: "Beneteau 42",
#     captain: user1
#     )
#
# voyage2 = Voyage.create!(
#     title: "Sail from Toronto to Niagara on the Lake",
#     location: "Harbourfront Center, Toronto",
#     description: "Proin gravida libero in augue rutrum, in tincidunt turpis consequat. Suspendisse tempor semper augue. Integer nec facilisis felis. Sed sed efficitur neque. Cras iaculis molestie nulla, ac aliquam libero congue a.",
#     start_time: DateTime.parse("2017-09-30 11:11:00"),
#     end_time: DateTime.parse("2017-10-30 11:11:00"),
#     capacity: 10,
#     voyage_image_url:"http://i64.tinypic.com/345zjfn.jpg",
#     boat_image_url:'http://i65.tinypic.com/33xhilh.jpg',
#     vessel_type: "Hunter 38",
#     captain: user2
#     )
#
# voyage3 = Voyage.create!(
#     title: "Crew needed at Boston Rowing Club",
#     location: "Boston Harbor",
#     description: "Cras rhoncus sem sed venenatis finibus. Suspendisse imperdiet facilisis orci sed luctus. Aenean at magna eget augue semper vestibulum sit amet vel nunc. Maecenas aliquet vestibulum quam semper lobortis. Aenean rutrum lobortis lorem. Maecenas ut vehicula dui. In pharetra sodales leo eu dignissim.",
#     start_time: DateTime.parse("2017-09-30 11:11:00"),
#     end_time: DateTime.parse("2017-10-30 11:11:00"),
#     capacity: 10,
#     voyage_image_url: "https://assetrio2016.azureedge.net/sport/alWtsN55.jpg",
#     boat_image_url:'https://upload.wikimedia.org/wikipedia/commons/e/e6/DMURC_mens_8%2B_at_BUCS_Regatta_2010.png',
#     vessel_type: "Boat (Coxed Eight)",
#     captain: user3
#     )
#
# reservation1 = Reservation.create!(
#     passenger: user3,
#     voyage: voyage2
#     )
#
# reservation2 = Reservation.create!(
#     passenger: user2,
#     voyage: voyage3
#     )
#
# reservation3 = Reservation.create!(
#     passenger: user1,
#     voyage: voyage3
#     )
