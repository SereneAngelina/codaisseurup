# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Theme.destroy_all


modern_and_minimal = Theme.create(name: "Modern and Minimal")
sleek_and_sophisticated = Theme.create(name: "Sleek and Sophisticated")
warm_and_cozy = Theme.create(name: "Warm and Cozy")
room_with_a_view = Theme.create(name: "Room with a View")
elegant_and_ornate = Theme.create(name: "Elegant and Ornate")
a_mans_touch = Theme.create(name: "A Man's Touch")
white_washed = Theme.create(name: "White Washed")
tempting_terrace = Theme.create(name: "Tempting Terrace")

jane = User.create!(email: "janey@gmail.com", password: "12345678")

event3 = Event.create!(name:"Meet Up", description:"Place where the coders and the teachers meet. Share some information and grow with each other",
location:"Weesperplein", price:20.00, capacity:50, includes_food:false, includes_drinks:true, starts_at:"2017-09-07 14:00:00", ends_at:"2017-09-08 14:00:00", active:true, user: jane, themes: [modern_and_minimal, sleek_and_sophisticated])
