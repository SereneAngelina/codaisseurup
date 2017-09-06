# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

jane = User.create!(email: "janey@gmail.com", password: "12345678")

event3 = Event.create!(name:"Meet Up", description:"Place where the coders and the teachers meet. Share some information and grow with each other",
location:"Weesperplein", price:20.00, capacity:50, includes_food:false, includes_drinks:true, starts_at:"2017-09-07 14:00:00", ends_at:"2017-09-08 14:00:00", active:true, user: jane)
