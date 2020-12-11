require 'date'
require 'open-uri'

diego = User.create!(password: '123abc', full_name: 'Diego Correa', username: 'Diego', about: 'Quero conhecer o mundo e ficar rico com o Piggy Bank', country: 'Brazil', genre: 'male', email: 'diego@teste.com')
file = URI.open('https://avatars2.githubusercontent.com/u/71459501?v=4')
diego.photo.attach(io: file, filename: 'diego.jpg', content_type: 'image/jpg')

augusto = User.create!(password: '123abc', full_name: 'Augusto ZA', username: 'Augustoza', about: 'Conhecer o mundo e comer pra baralho', country: 'Uruguay', genre: 'male', email: 'augusto@teste.com')
file = URI.open('https://avatars0.githubusercontent.com/u/72287676?v=4')
augusto.photo.attach(io: file, filename: 'augusto.jpg', content_type: 'image/jpg')

beatriz = User.create!(password: '123abc', full_name: 'Beatriz Caram', username: 'Bia', about: 'Meu objetivo na vida é comer todas as comidas do mundo', country: 'Mexico', genre: 'female', email: 'biacaram@teste.com')
file = URI.open('https://avatars3.githubusercontent.com/u/60752820?v=4')
beatriz.photo.attach(io: file, filename: 'beatriz.jpg', content_type: 'image/jpg')

mark = User.create!(password: '123abc', full_name: 'Mark Li', username: 'Mark', country: 'Germany', about: 'Quero ser pintor de arte abstrata rupestre e viver na penumbra. Sou gótico suave', genre: 'male', email: 'mark@teste.com')
file = URI.open('https://avatars3.githubusercontent.com/u/71938485?v=4')
mark.photo.attach(io: file, filename: 'mark.jpg', content_type: 'image/jpg')

bebeto = User.create!(password: '123abc', full_name: 'Roberto Chulapa', username: 'Bebeto', about: 'Diga seus bugs e eu te direi quem és', country: 'Japan', genre: 'male', email: 'bebeto@teste.com')
file = URI.open('https://s1.imghub.io/abbBy.jpg')
bebeto.photo.attach(io: file, filename: 'bebeto.jpg', content_type: 'image/jpg')

laranjeira = User.create!(password: '123abc', full_name: 'Laranjeira Bonita', username: 'Laranjeira', about: 'Sou muito gente legal 啪啪啪', country: 'China', genre: 'female', email: 'laranja@teste.com')
file = URI.open('https://avatars1.githubusercontent.com/u/69615451?v=4')
laranjeira.photo.attach(io: file, filename: 'laranjeira.jpg', content_type: 'image/jpg')

lincoln = User.create!(password: '123abc', full_name: 'Lincoln Abraham', username: 'Lincoln', about: 'Sou baixista da banda Lifetime Code, adoro codar, sentir o vento batendo em meu corpo nu. Estou aqui para conhecer diversas pessoas e me divertir muito. Manda nudes!', country: 'Brazil', genre: 'male', email: 'lincoln@teste.com')
file = URI.open('https://avatars2.githubusercontent.com/u/66792417?v=4')
lincoln.photo.attach(io: file, filename: 'lincoln.jpg', content_type: 'image/jpg')

miguel = User.create!(password: '123abc', full_name: 'Miguel Ito', username: 'Miguel', about: 'Sou de Portugal, não tenho sotaque, odeio palavrões', country: 'Portugal', genre: 'male', email: 'miguel@teste.com')
file = URI.open('https://avatars2.githubusercontent.com/u/64758573?v=4')
miguel.photo.attach(io: file, filename: 'miguel.jpg', content_type: 'image/jpg')

renata = User.create!(password: '123abc', full_name: 'Renata Ingrata', username: 'Renata', about: 'Meu nome é Renata, mas podem me chamar de Renight', country: 'Spain', genre: 'female', email: 'renata@teste.com')
file = URI.open('https://avatars1.githubusercontent.com/u/70242792?v=4')
renata.photo.attach(io: file, filename: 'renata.jpg', content_type: 'image/jpg')

vitor = User.create!(password: '123abc', full_name: 'Vitor Dal Pra', username: 'Vitor', about: 'Olá, meu nome é Vitor e minha voz é rouca e meus lábios aveludados hehe', country: 'England', genre: 'male', email: 'vitor@teste.com')
file = URI.open('https://avatars3.githubusercontent.com/u/21279236?v=4')
vitor.photo.attach(io: file, filename: 'vitor.jpg', content_type: 'image/jpg')

carla = User.create!(password: '123abc', full_name: 'Carla Perez', username: 'Carla', about: 'Meu sonho é ser a nova loira do É o tchan', country: 'Argentina', genre: 'female', email: 'carla@teste.com')
file = URI.open('https://avatars2.githubusercontent.com/u/72417551?v=4')
carla.photo.attach(io: file, filename: 'carla.jpg', content_type: 'image/jpg')

afonso = User.create!(password: '123abc', full_name: 'Afonso Augusto', username: 'Afonso', about: 'NÃO ME CHAME DE AUGUSTO', country: 'Jamaica', genre: 'male', email: 'afonso@teste.com')
file = URI.open('https://avatars2.githubusercontent.com/u/66492757?v=4')
afonso.photo.attach(io: file, filename: 'afonso.jpg', content_type: 'image/jpg')

matheus = User.create!(password: '123abc', full_name: 'Matheus Kaiser', about: 'A cerveja que desce quadrada. Mãe to na tv', username: 'Matheus', country: 'Australia', genre: 'male', email: 'matheus@teste.com')
file = URI.open('https://avatars1.githubusercontent.com/u/70783827?v=4')
matheus.photo.attach(io: file, filename: 'matheus.jpg', content_type: 'image/jpg')

thiago = User.create!(password: '123abc', full_name: 'Thiago AV', about: 'Lutador de boxe tailandês', username: 'Thiago', country: 'Thailand', genre: 'male', email: 'thiago@teste.com')
file = URI.open('https://s1.imghub.io/afoSM.jpg')
thiago.photo.attach(io: file, filename: 'thiago.jpg', content_type: 'image/jpg')



finaldate = (DateTime.now +99)
CATEGORIES = ['Ao ar livre', 'Natureza', 'Aventura', 'Cultural', 'Festas', 'Bares', 'Shows', 'Gastronomia', 'Compras', 'Transporte', 'Esportes']

activity_1 = Activity.create!(category: 'Cultural', user: augusto, title: 'Conhecer o MASP', description: 'Bora conhecer esse museu, curtir uma manhã e tarde inteira lá!', initial_date: DateTime.now, final_date: finaldate, location: 'MASP, São Paulo')
Chatroom.create!(activity_id: activity_1.id)
Exploration.create!(activity_id: activity_1.id, user: augusto)

activity_2 = Activity.create!(category: 'Festas', user: renata, title: 'Party hard', description: 'Vamos curtir todas as festas possíveis em uma noite só, tipo pubcrawl!', initial_date: DateTime.now, final_date: finaldate, location: 'Paris')
Chatroom.create!(activity_id: activity_2.id)
Exploration.create!(activity_id: activity_2.id, user: renata)

activity_3 = Activity.create!(category: 'Shows', user: beatriz, title: 'Suquita Music Festival', description: 'Bora curtir o maior festival de música da cidade de São Paulo. Line up: Lifetime Code, Nicolas Enne, Barões da Pisadinha, Ratos de Porão, MC Bochecha, Calypso, Iron Maiden, Sepultura, Carlinhos Brown, Velhas Virgens, Luísa Sonsa, Jon Bovi, Chitãozinho e Chororó, Racionais MC', initial_date: DateTime.now, final_date: finaldate, location: 'Estádio Morumbi, São Paulo')
Chatroom.create!(activity_id: activity_3.id)
Exploration.create!(activity_id: activity_3.id, user: beatriz)

activity_4 = Activity.create!(category: 'Gastronomia', user: mark, title: 'Jantar no Vintão', initial_date: DateTime.now, final_date: finaldate, location: 'Faria Lima, São Paulo')
Chatroom.create!(activity_id: activity_4.id)
Exploration.create!(activity_id: activity_4.id, user: mark)

activity_5 = Activity.create!(category: 'Bares', user: bebeto, title: 'Metal no Fofinho', initial_date: DateTime.now, final_date: finaldate, location: 'Rua Augusta, 1415, São Paulo')
Chatroom.create!(activity_id: activity_5.id)
Exploration.create!(activity_id: activity_5.id, user: bebeto)

activity_6 = Activity.create!(category: 'Ao ar livre', user: lincoln, title: 'Correr nu na Paulista', description: 'Bora ficar peladaço na Av. Paulista. Modalidades: 100m rasos, Marcha atlética (minha preferida), Maratona, revezamento 4 x 100 (com troca de bastão hehe)', initial_date: DateTime.now, final_date: finaldate, location: 'Avenida Paulista, 1000, São Paulo')
Chatroom.create!(activity_id: activity_6.id)
Exploration.create!(activity_id: activity_6.id, user: lincoln)

activity_7 = Activity.create!(category: 'Outros', user: afonso, title: 'Brincar com os Peludos', description: 'Só para quem curte um cachorrão peludo hehe', initial_date: DateTime.now, final_date: finaldate, location: 'Rua Augusta, 657, São Paulo')
Chatroom.create!(activity_id: activity_7.id)
Exploration.create!(activity_id: activity_7.id, user: afonso)

activity_8 = Activity.create!(category: 'Esportes', user: thiago, title: 'Jogão do Inter', description: 'Vamo inter!', initial_date: DateTime.now, final_date: finaldate, location: 'Estádio Beira Rio, Porto Alegre')
Chatroom.create!(activity_id: activity_8.id)
Exploration.create!(activity_id: activity_8.id, user: thiago)

activity_9 = Activity.create!(category: 'Compras', user: miguel, title: 'Comprar Monitor Bacana', description: 'Deu ruim no meu monitor =(', initial_date: DateTime.now, final_date: finaldate, location: 'Miami, Estados Unidos')
Chatroom.create!(activity_id: activity_9.id)
Exploration.create!(activity_id: activity_9.id, user: miguel)

activity_10 = Activity.create!(category: 'Aventura', user: carla, title: 'Rapel Burj Khalifa', description: 'Vida loka, jão!', initial_date: DateTime.now, final_date: finaldate, location: 'Burj Khalifa, EAU')
Chatroom.create!(activity_id: activity_10.id)
Exploration.create!(activity_id: activity_10.id, user: carla)

activity_11 = Activity.create!(category: 'Bares', user: matheus, title: 'Beber cafezinho de artista', description: 'Coffee shop hehe', initial_date: DateTime.now, final_date: finaldate, location: 'Amsterdam, Holanda')
Chatroom.create!(activity_id: activity_11.id)
Exploration.create!(activity_id: activity_11.id, user: matheus)

activity_12 = Activity.create!(category: 'Outros', user: laranjeira, title: 'Fotografar cães sensuais', description: 'Auau', initial_date: DateTime.now, final_date: finaldate, location: 'Harbin, China')
Chatroom.create!(activity_id: activity_12.id)
Exploration.create!(activity_id: activity_12.id, user: laranjeira)
