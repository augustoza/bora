require 'date'
require 'open-uri'

#TODO------------------------------------
#TODO -----------> USERS <---------------
#TODO------------------------------------

diego = User.create!(password: '123abc', full_name: 'Diego Correa', username: 'Diego', country: 'Brazil', genre: 'male', email: 'diego@teste.com')
file = URI.open('https://avatars2.githubusercontent.com/u/71459501?v=4')
diego.photo.attach(io: file, filename: 'diego.jpg', content_type: 'image/jpg')

augusto = User.create!(password: '123abc', full_name: 'Augusto AZ', username: 'Augustoza', country: 'Uruguay', genre: 'male', email: 'augusto@teste.com')
file = URI.open('https://avatars0.githubusercontent.com/u/72287676?v=4')
augusto.photo.attach(io: file, filename: 'augusto.jpg', content_type: 'image/jpg')

beatriz = User.create!(password: '123abc', full_name: 'Beatriz Caram', username: 'Bia', country: 'Mexico', genre: 'female', email: 'biacaram@teste.com')
file = URI.open('https://avatars3.githubusercontent.com/u/60752820?v=4')
beatriz.photo.attach(io: file, filename: 'beatriz.jpg', content_type: 'image/jpg')

mark = User.create!(password: '123abc', full_name: 'Mark Li', username: 'Mark', country: 'Germany', genre: 'male', email: 'mark@teste.com')
file = URI.open('https://avatars3.githubusercontent.com/u/71938485?v=4')
mark.photo.attach(io: file, filename: 'mark.jpg', content_type: 'image/jpg')

bebeto = User.create!(password: '123abc', full_name: 'Roberto Chulapa', username: 'Bebeto', country: 'Japan', genre: 'male', email: 'bebeto@teste.com')
file = URI.open('https://s1.imghub.io/abbBy.jpg')
bebeto.photo.attach(io: file, filename: 'bebeto.jpg', content_type: 'image/jpg')

laranjeira = User.create!(password: '123abc', full_name: 'Laranjeira Bonita', username: 'Laranjeira', country: 'China', genre: 'female', email: 'laranja@teste.com')
file = URI.open('https://avatars1.githubusercontent.com/u/69615451?v=4')
laranjeira.photo.attach(io: file, filename: 'laranjeira.jpg', content_type: 'image/jpg')

lincoln = User.create!(password: '123abc', full_name: 'Lincoln Abraham', username: 'Lincoln', about: 'Sou baixista da banda Lifetime Code, adoro codar, sentir o vento batendo em meu corpo nu. Estou aqui para conhecer diversas pessoas e me divertir muito. Manda nudes!', country: 'Brazil', genre: 'male', email: 'lincoln@teste.com')
file = URI.open('https://avatars2.githubusercontent.com/u/66792417?v=4')
lincoln.photo.attach(io: file, filename: 'lincoln.jpg', content_type: 'image/jpg')

miguel = User.create!(password: '123abc', full_name: 'Miguel Ito', username: 'Miguel', country: 'Portugal', genre: 'male', email: 'miguel@teste.com')
file = URI.open('https://avatars2.githubusercontent.com/u/64758573?v=4')
miguel.photo.attach(io: file, filename: 'miguel.jpg', content_type: 'image/jpg')

renata = User.create!(password: '123abc', full_name: 'Renata Ingrata', username: 'Renata', country: 'Spain', genre: 'female', email: 'renata@teste.com')
file = URI.open('https://avatars1.githubusercontent.com/u/70242792?v=4')
renata.photo.attach(io: file, filename: 'renata.jpg', content_type: 'image/jpg')

vitor = User.create!(password: '123abc', full_name: 'Vitor Dal Pra', username: 'Vitor', country: 'England', genre: 'male', email: 'vitor@teste.com')
file = URI.open('https://avatars3.githubusercontent.com/u/21279236?v=4')
vitor.photo.attach(io: file, filename: 'vitor.jpg', content_type: 'image/jpg')

carla = User.create!(password: '123abc', full_name: 'Carla Perez', username: 'Carla', country: 'Argentina', genre: 'female', email: 'carla@teste.com')
file = URI.open('https://avatars2.githubusercontent.com/u/72417551?v=4')
carla.photo.attach(io: file, filename: 'carla.jpg', content_type: 'image/jpg')

afonso = User.create!(password: '123abc', full_name: 'Afonso Augusto', username: 'Afonso', country: 'Jamaica', genre: 'male', email: 'afonso@teste.com')
file = URI.open('https://avatars2.githubusercontent.com/u/66492757?v=4')
afonso.photo.attach(io: file, filename: 'afonso.jpg', content_type: 'image/jpg')

fernando = User.create!(password: '123abc', full_name: 'Fernando Beira-mar', username: 'Fernando', country: 'Australia', genre: 'male', email: 'fernando@teste.com')
file = URI.open('https://avatars3.githubusercontent.com/u/71726856?v=4')
fernando.photo.attach(io: file, filename: 'fernando.jpg', content_type: 'image/jpg')

#TODO------------------------------------
#TODO---------> ACTIVITIES <-------------
#TODO------------------------------------

finaldate = (DateTime.now +99)
CATEGORIES = ['Ao ar livre', 'Natureza', 'Aventura', 'Cultural', 'Festas', 'Bares', 'Shows', 'Gastronomia', 'Compras', 'Transporte', 'Esportes']

activity_1 = Activity.create!(category: 'Cultural', user_id: 1, title: 'Conhecer o MASP', description: 'Bora conhecer esse museu, curtir uma manhã e tarde inteira lá!', initial_date: DateTime.now, final_date: finaldate, location: 'MASP, São Paulo')
Chatroom.create!(activity_id: activity_1.id)
Exploration.create!(activity_id: activity_1.id, user_id: 1)

activity_2 = Activity.create!(category: 'Festas', user_id: 2, title: 'Party hard', description: 'Vamos curtir todas as festas possíveis em uma noite só, tipo pubcrawl!', initial_date: DateTime.now, final_date: finaldate, location: 'Paris')
Chatroom.create!(activity_id: activity_2.id)
Exploration.create!(activity_id: activity_2.id, user_id: 2)

activity_3 = Activity.create!(category: 'Outros', user_id: 3, title: 'Grab a drink', initial_date: DateTime.now, final_date: finaldate, location: 'London')
Chatroom.create!(activity_id: activity_3.id)
Exploration.create!(activity_id: activity_3.id, user_id: 3)

activity_4 = Activity.create!(category: CATEGORIES.sample, user_id: 4, title: 'Explore the area', initial_date: DateTime.now, final_date: finaldate, location: 'Tokyo')
Chatroom.create!(activity_id: activity_4.id)
Exploration.create!(activity_id: activity_4.id, user_id: 4)

activity_5 = Activity.create!(category: 'Ao ar livre', user_id: 6, title: 'Explorar a Paulista', initial_date: DateTime.now, final_date: finaldate, location: 'Avenida Paulista, 1000, São Paulo')
Chatroom.create!(activity_id: activity_5.id)
Exploration.create!(activity_id: activity_5.id, user_id: 6)

# test