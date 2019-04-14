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


Event.create(name: "Formula 1 : UK GP", date: "14/07/2019", time: "14H", tickets_available: 250, price: 200000)

Event.create(name: "Champions League Final", date: "01/06/2019", time: "20H", tickets_available: 1000, price: 10000)

Event.create(name: "Muse in Cracow", date: "22/06/2019", time: "18H", tickets_available: 1500, price: 150000)

Event.create(name: "Sziget Festival", date: "07/08/2019", time: "16H", tickets_available: 20000, price: 500000)

Event.create(name: "Tomorrowland", date: "19/07/2019", time: "12H", tickets_available: 0, price: 20000000000)

Event.create(name: "French Open Tennis", date: "26/05/2019", time: "13H", tickets_available: 25, price: 1500000)

puts "All done you're good to go with 5 cool events"
