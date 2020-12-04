require 'date'
require 'open-uri'

#TODO------------------------------------
#TODO -----------> USERS <---------------
#TODO------------------------------------

User.create!(password: '123abc', full_name: 'Diego C', username: 'Diego', country: 'Brazil', genre: 'male', email: 'diego@teste.com')

User.create!(password: '123abc', full_name: 'Augusto AZ', username: 'Augustoza', country: 'Germany', genre: 'male', email: 'augusto@teste.com')

User.create!(password: '123abc', full_name: 'Beatriz Caram', username: 'Bia', country: 'Mexico', genre: 'female', email: 'biacaram@teste.com')

User.create!(password: '123abc', full_name: 'Thiago', username: 'Thiagoav', country: 'Uruguay', genre: 'male', email: 'thiagoav@teste.com')

User.create!(password: '123abc', full_name: 'Roberto', username: 'Bebeto', country: 'Japan', genre: 'male', email: 'bebeto@teste.com')

laranjeira = User.create!(password: '123abc', full_name: 'Laranjeira', username: 'Laranjeira', country: 'China', genre: 'female', email: 'laranja@teste.com')
file = URI.open('https://avatars1.githubusercontent.com/u/69615451?v=4')
laranjeira.photo.attach(io: file, filename: 'laranjeira.jpg', content_type: 'image/jpg')

User.create!(password: '123123', full_name: 'Joleno', username: 'joleno', country: 'Brazil', genre: 'male', email: 'joleno@teste.com')

#TODO------------------------------------
#TODO---------> ACTIVITIES <-------------
#TODO------------------------------------

finaldate = (DateTime.now +99)
CATEGORIES = ['Ao ar livre', 'Natureza', 'Aventura', 'Cultural', 'Festas', 'Bares', 'Shows', 'Gastronomia', 'Compras', 'Transporte', 'Esportes']

activity_1 = Activity.create!(category: CATEGORIES.sample, user_id: 1, title: 'Explorar Buenos Aires', initial_date: DateTime.now, final_date: finaldate, location: 'Buenos Aires')
Chatroom.create!(activity_id: activity_1.id)

activity_2 = Activity.create!(category: CATEGORIES.sample, user_id: 2, title: 'Explorar o Louvre', initial_date: DateTime.now, final_date: finaldate, location: 'Paris')
Chatroom.create!(activity_id: activity_2.id)

activity_3 = Activity.create!(category: CATEGORIES.sample, user_id: 3, title: 'Grab a drink', initial_date: DateTime.now, final_date: finaldate, location: 'London')
Chatroom.create!(activity_id: activity_3.id)

activity_4 = Activity.create!(category: CATEGORIES.sample, user_id: 4, title: 'Explore the area', initial_date: DateTime.now, final_date: finaldate, location: 'Tokyo')
Chatroom.create!(activity_id: activity_4.id)

activity_5 = Activity.create!(category: 'Ao ar livre', user_id: 6, title: 'Explorar a Paulista', initial_date: DateTime.now, final_date: finaldate, location: 'Avenida Paulista, 1000, São Paulo')
Chatroom.create!(activity_id: activity_5.id)

# test