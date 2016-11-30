  # This file should contain all the record creation needed to seed the databa
# The data can then be loaded with the rails db:seed command (or created along
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings'
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

Speciality.create(name: "Actor")
Speciality.create(name: "Singer")
Speciality.create(name: "Cook")
Speciality.create(name: "Dancer")
Speciality.create(name: "Writer")
Speciality.create(name: "Entertainer")
Speciality.create(name: "President")
Speciality.create(name: "TA")

anto = User.create!( email: "al@gmail.com", first_name: 'Anthony', last_name: 'Limère', phone_number: '652540', city:'bruxelles' , address: '5 place st gudule', password: 'limere123', role: 'Celebrity', price_per_day: 50, profile_picture: 'anthony-limere.jpeg')
gkos = User.create!( email: "gk@gmail.com", first_name: 'George', last_name: 'Kosmopoulos', phone_number: '565879846', city:'bruxelles' , address: '5 place st gudule', password: 'kosmopoulos123', role: 'Celebrity', price_per_day: 50, profile_picture: 'george_kosmopoulos.jpg')
lagr = User.create!( email: "lg@gmail.com", first_name: 'Larry', last_name: 'Grutman', phone_number: '45160', city:'bruxelles' , address: '5 place st gudule', password: 'grutmans123', role: 'Celebrity', price_per_day: 50, profile_picture: 'Larry_grutman.jpg')
mti = User.create!( email: "mt@gmail.com", first_name: 'Margot', last_name: 'Tinawi', phone_number: '455464846160', city:'bruxelles' , address: '5 place st gudule', password: 'tinawi123', role: 'Celebrity', price_per_day: 50, profile_picture: 'Margo-Tinawi.jpg')
mko = User.create!( email: "mk@gmail.com", first_name: 'Matthijs', last_name: 'Kolkman', phone_number: '62865246', city:'bruxelles' , address: '5 place st gudule', password: 'Kolkman123', role: 'Celebrity', price_per_day: 50, profile_picture: 'Matthijs-Kolkman.jpg')
clem = User.create!( email: "cg@gmail.com", first_name: 'Clémence', last_name: 'Gillion', phone_number: '6445464844488246', city:'bruxelles' , address: '5 place st gudule', password: 'gillion123', role: 'Celebrity', price_per_day: 50, profile_picture: 'clemence_gillion.jpeg')
phan = User.create!( email: "pp@gmail.com", first_name: 'Phanarat', last_name: 'Pak', phone_number: '6488246', city:'bruxelles' , address: '5 place st gudule', password: 'pak123', role: 'Celebrity', price_per_day: 50, profile_picture: 'Phanarat-Pak.jpg')
tom = User.create!( email: "tw@gmail.com", first_name: 'Thomas', last_name: 'Wilkinson', phone_number: '64884568246', city:'bruxelles' , address: '5 place st gudule', password: 'wilkinson123', role: 'Celebrity', price_per_day: 50, profile_picture: 'Thomas-Wilkinson.jpg')
obam = User.create!( email: "BO@gmail.com", first_name: 'Barack', last_name: 'Obama', phone_number: '546841354', city:'Washington' , address: 'White House', password: 'obama123', role: 'Celebrity', price_per_day: 10, profile_picture: 'Barack_Obama.jpg')
fholl = User.create!( email: "fh@gmail.com", first_name: 'Francois', last_name: 'Hollande', phone_number: '465462', city:'Paris' , address: 'Elysée', password: 'hollande123', role: 'Celebrity', price_per_day: -3000, profile_picture: 'francois_hollande.jpeg')
trum = User.create!( email: "dt@gmail.com", first_name: 'Donald', last_name: 'Trump', phone_number: '652626', city:'New York' , address: '725 5th Avenue', password: 'trump123', role: 'Celebrity', price_per_day: 250, profile_picture: 'Donald_trump.jpeg')
phile = User.create!( email: "pe@gmail.com", first_name: 'Philippe', last_name: 'Etchebest', phone_number: '5346781', city:'Bordeaux' , address: '2 place de la Comédie', password: 'etchebest123', role: 'Celebrity', price_per_day: 50, profile_picture: 'philippe_Etchebest.jpg')
joer = User.create!( email: "jr@gmail.com", first_name: 'Joel', last_name: 'Robuchon', phone_number: '546876546', city:'Paris' , address: '5, rue de Montalembert ', password: 'robuchon123', role: 'Celebrity', price_per_day: 10, profile_picture: 'joel-robuchon.jpg')
chris = User.create!( email: "cc@gmail.com", first_name: 'Christian', last_name: 'Constant', phone_number: '568754629', city:'Paris', address: '46, rue de l universite', password: 'lahaye123', role: 'Celebrity', price_per_day: 50, profile_picture: 'Christian-Constant.jpg')
gord = User.create!( email: "gr@gmail.com", first_name: 'Gordon', last_name: 'Ramsay', phone_number: '654513869', city:'London' , address: '539-547 Wandsworth Road', password: 'ramsay123', role: 'Celebrity', price_per_day: -50, profile_picture: 'gordon-ramsay.jpg')
jo = User.create!( email: "jo@gmail.com", first_name: 'Jamie', last_name: 'Oliver', phone_number: '650266463516', city:'London' , address: '23a Shaftesbury Avenue', password: 'jamie123', role: 'Celebrity', price_per_day: 30, profile_picture: 'Jamie_Oliver.jpg')
bonnie = User.create!( email: "bt@gmail.com", first_name: 'Bonnie', last_name: 'Tyler', phone_number: '5656565656', city:'London' , address: '69 Vauxhall Grove,', password: 'bonnie123', role: 'Celebrity', price_per_day: 76, profile_picture: 'Bonnie_Tyler.jpg')
kim = User.create!( email: "kw@gmail.com", first_name: 'Kim', last_name: 'Wilde', phone_number: '256446521', city:' Creysse' , address: '32 avenue de la Roque', password: 'kim123', role: 'Celebrity', price_per_day: 76, profile_picture: 'Kim_Wilde.jpeg')
nana = User.create!( email: "nm@gmail.com", first_name: 'nana', last_name: 'Mouskouri', phone_number: '2564618', city:'Paris' , address: '22 rue des Fossés Saint-Jacques', password: 'mouskouri123', role: 'Celebrity', price_per_day: 80, profile_picture: 'Nana_Mouskouri.jpg')
jluc = User.create!( email: "jll@gmail.com", first_name: 'Jean-Luc', last_name: 'Lahaye', phone_number: '6256541356426', city:'Paris' , address: '2 rue de St-Petersbourg', password: 'lahaye123', role: 'Celebrity', price_per_day: 50, profile_picture: 'jean-luc-lahaye.jpg')
jcl = User.create!( email: "jc@gmail.com", first_name: 'Julien', last_name: 'Clerc', phone_number: '656426', city:'Paris' , address: '20, Avenue Rapp', password: 'clerc123', role: 'Celebrity', price_per_day: 60, profile_picture: 'julien_clerc.jpg')
roch = User.create!( email: "rv@gmail.com", first_name: 'Roch', last_name: 'Voisine', phone_number: '4564648454', city:'Montreal' , address: '256, Rue san-Antonio', password: 'roch123', role: 'Celebrity', price_per_day: 60, profile_picture: 'roch_voisine.jpeg')
msardo = User.create!( email: "ms@gmail.com", first_name: 'Michel', last_name: 'Sardou', phone_number: '556468651', city:'paris' , address: '25, Rue Saint-Dominique', password: 'sardou123', role: 'Celebrity', price_per_day: 45, profile_picture: 'sardou.jpeg')
shaki = User.create!( email: "sh@gmail.com", first_name: 'Shakira', last_name: 'Piqué', phone_number: '546131', city:'New York' , address: '1411 Broadway 39th Floor ', password: 'shakira123', role: 'Celebrity', price_per_day: 200, profile_picture: 'shakira.jpg')

review = Review.create!(renter_id: anto.id, celeb_id: gkos.id, rating: 5, content:"very good")
review1 = Review.create!(renter_id: gkos.id, celeb_id: shaki.id, rating: 1, content:"bad singer")
review2 = Review.create!(renter_id: shaki.id, celeb_id: lagr.id, rating: 5, content:"Good coder")
review3 = Review.create!(renter_id: clem.id, celeb_id: roch.id, rating: 5, content:"HAAAAAAA I'm completly in love")

10.times do
 UserSpeciality.create(user_id:User.all.sample.id,speciality_id:Speciality.all.sample.id)
end

booking_a = Booking.create!(content: "party at Co.station", date: "20/12/2016", price: '32', status: nil, renter_id: anto.id, celeb_id: gkos.id )
booking_b = Booking.create!(content: "sing for me", date: "20/12/2016", price: '55', status: nil, renter_id: clem.id, celeb_id: roch.id )
booking_c = Booking.create!(content: "dance for me", date: "12/01/2017", price: '43', status: nil, renter_id: gkos.id, celeb_id: shaki.id )
booking_d = Booking.create!(content: "DJ at my party", date: "20/10/2017", price: '27', status: nil, renter_id: nana.id , celeb_id: msardo.id )
booking_e = Booking.create!(content: "cook for me", date: "20/11/2017", price: '27', status: nil, renter_id: gord.id, celeb_id: phile.id )
