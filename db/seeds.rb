  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

bob = User.create!( email: "bob@bob.com", first_name: 'bob', last_name: 'bobbob', phone_number: '99999', city:'bxl' , address: 'rur dxfg 23', password: 'bobbob', role: 'Celebrity', price_per_day: 76, profile_picture: 'bob.jpeg')
toto = User.create!( email: "toto@toto.com", first_name: 'toto', last_name: 'toto', phone_number: '501951315', city:'bxl' , address: 'rur dxfg 23', password: '123456', role: 'Celebrity', price_per_day: 76, profile_picture: 'toto.jpeg')
fox = User.create!( email: "fox@gmail.com", first_name: 'francois', last_name: 'Ox', phone_number: '2564618', city:'bxl' , address: 'rur dxfg 23', password: '567891', role: 'Celebrity', price_per_day: 76, profile_picture: 'fox.jpeg')
boumbo = User.create!( email: "boumbo@boumbo.com", first_name: 'boum', last_name: 'bo', phone_number: '56565656', city:'bxl' , address: 'rur dxfg 23', password: '912345', role: 'Celebrity', price_per_day: 76, profile_picture: 'boumbo.jpeg')

review = Review.new(renter: User.first, celeb: User.last, rating: 5, content:"very good")
review = Review.new(renter: User.first, celeb: User.first, rating: 1, content:"Boring")
review = Review.new(renter: User.last, celeb: User.first, rating: 5, content:"extra")
review = Review.new(renter: User.last, celeb: User.last, rating: 3, content:"Dirty")
