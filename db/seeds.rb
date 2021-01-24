# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sender2 = Sender.find_or_create_by(first_name:'Zin', last_name:'Guan',code: "1B3B4", amount:"12.45")
# location1 =sender2.locations.find_or_create_by(country: 'China', address: "12 ST WEST")

# receiver1 = sender2.receivers.find_or_create_by(first_name:'Zwan', last_name:'Pierre', completed: false)
receiver2 = sender2.receivers.find_or_create_by(first_name:'Lee', last_name:'Bob', completed: true)
receiver3 = sender2.receivers.find_or_create_by(first_name:'Zix', last_name:'Richard', completed: false)
receiver4 = sender2.receivers.find_or_create_by(first_name:'Tchee', last_name:'Zea', completed: true)
receiver5 = sender2.receivers.find_or_create_by(first_name:'Heyou', last_name:'Patrick', completed: false)
receiver6 = sender2.receivers.find_or_create_by(first_name:'Zian', last_name:'Leah', completed: true)
receiver7 = sender2.receivers.find_or_create_by(first_name:'Zoua', last_name:'Zaoh', completed: false)

