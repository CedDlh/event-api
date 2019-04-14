# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "events cleaned. Creating new..."

# User.create(first_name: "Admin", last_name: "Minister", city: "Berlin", plz: nil,
            # languages: nil, specialties: nil,
            # buddy: false, email: "a@a.at", password: "12345678")


#Event.create(puts "users cleaned. Creating new..."

# User.create(first_name: "Admin", last_name: "Minister", city: "Berlin", plz: nil,
            # languages: nil, specialties: nil,
            # buddy: false, email: "a@a.at", password: "12345678")


Event.create(name: "Pablo & friends", date: "11/05/2019", time: "21H", tickets_available: 25, price: 2000)
