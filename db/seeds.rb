# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Create 10 users
10.times do |i|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    supplier: Faker::Boolean.boolean,
    address: Faker::Address.full_address,
    cpf: Faker::IDNumber.brazilian_citizen_number,
    cnpj: Faker::IDNumber.brazilian_citizen_number,
    cellphone: Faker::PhoneNumber.cell_phone
  )
end

# Create 10 batteries
10.times do |i|
  Battery.create(
    category: Faker::Device.model_name,
    year_use: Faker::Date.between(from: 2.years.ago, to: Date.today),
    active: Faker::Boolean.boolean,
    user_id: User.pluck(:id).sample,
  )
end

# Create 10 deliveries
10.times do |i|
  Delivery.create(
    address: Faker::Address.full_address,
    delivery_date: Faker::Date.between(from: 2.years.ago, to: Date.today),
    collected_date: Faker::Date.between(from: 2.years.ago, to: Date.today),
    person_collected: Faker::Name.name,
    person_delivery: Faker::Name.name,
    user_id: User.pluck(:id).sample,
    battery_id: Battery.pluck(:id).sample
  )
end
