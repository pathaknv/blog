# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

first_names = [ 'Angelica', 'Cedric', 'Paul', 'Alexander', 'Serge' ]
last_names = [ 'Ramos', 'Kelly', 'Bruce', 'Mccray', 'Baldwin' ]

3000.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  name = [ first_name, last_name ].join(' ')
  email = first_name + last_name + '@sampleblog.com'
  User.create(name: name, email: email, mobile_number: rand(9 ** 9))
end