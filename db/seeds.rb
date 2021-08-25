# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Chef.destroy_all

puts "Creating user"

user1 = User.create!(
  email: "bobby@gmail.com",
  password: "123456",
  first_name: "Bobby",
  last_name: "Smith"
)

puts "Creating chef"
chef1 = Chef.create!(
  speciality: "french",
  experience: "very experienced",
  user: user1
)
