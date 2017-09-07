# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Photo.destroy_all
Category.destroy_all
Event.destroy_all
Profile.destroy_all
User.destroy_all








sports_and_fitness = Category.create(name: "sports_and_fitness")
tech = Category.create(name: "tech")
music = Category.create(name: "music")
family = Category.create(name: "family")
outdoors_and_adventures = Category.create(name: "outdoors_and_adventures")
writing = Category.create(name: "writing")
film = Category.create(name: "film")
food_and_drink = Category.create(name: "food_and_drink")



jane = User.create!(email: "janey@gmail.com", password: "12345678")
monica = User.create!(email: "monica@gmail.com", password: "7654321")

event3 = Event.create!(name:"Meet Up", description:"Place where the coders and the teachers meet. Share some information and grow with each other",
location:"Weesperplein", price:20.00, capacity:50, includes_food:false, includes_drinks:true, starts_at:"2017-09-07 14:00:00", ends_at:"2017-09-08 14:00:00", active:true, user: jane, categories: [music, tech])


event4 = Event.create!(name:"Code Contest", description:"Come, code and win. Show your talents to us",
location:"Amsterdam", price:10.00, capacity:70, includes_food:false, includes_drinks:true, starts_at:"2017-09-07 14:00:00", ends_at:"2017-09-08 14:00:00", active:true, user: jane, categories: [music, family])


photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dvmfuraf4/image/upload/v1504780265/images2_rntnt2.jpg", event: event3)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dvmfuraf4/image/upload/v1504780250/banner-772x250_rad6jy.png", event: event3)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dvmfuraf4/image/upload/v1504780244/00-meetup-590.__large_preview.__large_preview_qblbiw.jpg", event: event3)



photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dvmfuraf4/image/upload/v1504779962/Coding-Contest_Wuerfel-_tra-300x291_jnswka.png", event: event4)
photo6 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dvmfuraf4/image/upload/v1504779965/Code-a-thon_WebBanner_Sep16_v3_plgtuv.png", event: event4)
