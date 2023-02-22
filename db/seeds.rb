# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
type = ["chinese", "italian", "japanese", "french", "belgian"]
5.times do
  Restaurant.create({
    name: Faker::Name.name,
    phone_number: Faker::PhoneNumber.phone_number,
    category: type.sample,
    address: Faker::Address.street_address
  })
end
