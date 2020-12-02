require 'date'

#TODO------------------------------------
#TODO -----------> USERS <---------------
#TODO------------------------------------

User.create!(password: '123abc', full_name: 'Diego C', username: 'Diego', country: 'Brazil', genre: 'male', email: 'diego@teste.com')

User.create!(password: '123abc', full_name: 'Augusto AZ', username: 'Augustoza', country: 'Germany', genre: 'male', email: 'augusto@teste.com')

User.create!(password: '123abc', full_name: 'Beatriz Caram', username: 'Bia', country: 'Mexico', genre: 'female', email: 'biacaram@teste.com')

User.create!(password: '123abc', full_name: 'Thiago', username: 'Thiagoav', country: 'Uruguay', genre: 'male', email: 'thiagoav@teste.com')

User.create!(password: '123abc', full_name: 'Roberto', username: 'Bebeto', country: 'Japan', genre: 'male', email: 'bebeto@teste.com')

User.create!(password: '123abc', full_name: 'Laranjeira', username: 'Laranjeira', country: 'China', genre: 'female', email: 'laranja@teste.com')

User.create!(password: '123123', full_name: 'Joleno', username: 'joleno', country: 'Brazil', genre: 'male', email: 'joleno@teste.com')

#TODO------------------------------------
#TODO---------> ACTIVITIES <-------------
#TODO------------------------------------

finaldate = (DateTime.now +99)
CATEGORIES = ['Ao ar livre', 'Natureza', 'Aventura', 'Cultural', 'Festas', 'Bares', 'Shows', 'Gastronomia', 'Compras', 'Transporte', 'Esportes']

Activity.create!(category: CATEGORIES.sample, user_id: 1, title: 'Explorar Buenos Aires', initial_date: DateTime.now, final_date: finaldate, location: 'Buenos Aires')

Activity.create!(category: CATEGORIES.sample, user_id: 2, title: 'Explorar o Louvre', initial_date: DateTime.now, final_date: finaldate, location: 'Paris')

Activity.create!(category: CATEGORIES.sample, user_id: 3, title: 'Grab a drink', initial_date: DateTime.now, final_date: finaldate, location: 'London')

Activity.create!(category: CATEGORIES.sample, user_id: 4, title: 'Explore the area', initial_date: DateTime.now, final_date: finaldate, location: 'Tokyo')

Activity.create!(category: 'Ao ar livre', user_id: 6, title: 'Explorar a Paulista', initial_date: DateTime.now, final_date: finaldate, location: 'Avenida Paulista, 1000, São Paulo')

