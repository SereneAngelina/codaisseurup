# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Category.destroy_all



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


event4 = Event.create!(name:"Music Contest", description:"Come and sing..... Show your talents to us",
location:"Amsterdam", price:10.00, capacity:70, includes_food:false, includes_drinks:true, starts_at:"2017-09-07 14:00:00", ends_at:"2017-09-08 14:00:00", active:true, user: jane, categories: [music, family])
