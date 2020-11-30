require 'date'

#TODO USERS

user1 = User.create!(name: 'Diego C', username: 'Diego', country: 'Brazil', genre: 'male', email: 'diego@teste.com', )
user2 = User.create!(name: 'Augusto AZ', username: 'Augustoza', country: 'Germany', genre: 'male', email: 'augusto@teste.com', )
user3 = User.create!(name: 'Beatriz Caram', username: 'Bia', country: 'Mexico', genre: 'female', email: 'biacaram@teste.com', )
user4 = User.create!(name: 'Thiago', username: 'Thiagoav', country: 'Uruguay', genre: 'male', email: 'thiagoav@teste.com', )
user5 = User.create!(name: 'Roberto', username: 'Bebeto', country: 'Japan', genre: 'male', email: 'bebeto@teste.com', )
user6 = User.create!(name: 'Laranjeira', username: 'Laranjeira', country: 'China', genre: 'female', email: 'laranja@teste.com', )

activity1 = Activity.create!(title: 'Explorar Buenos Aires', initial_date: DateTime.now -1, final_date: DateTime.now, location: 'Buenos Aires')
activity2 = Activity.create!(title: 'Explorar o Louvre', initial_date: DateTime.now -1, final_date: DateTime.now, location: 'Paris')
activity3 = Activity.create!(title: 'Grab a drink', initial_date: DateTime.now -1, final_date: DateTime.now, location: 'London')
activity4 = Activity.create!(title: 'Explore the area', initial_date: DateTime.now -1, final_date: DateTime.now, location: 'Tokyo')
