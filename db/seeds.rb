# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Doctor.delete_all
Patient.delete_all
Appointment.delete_all
City.delete_all



20.times do |i|
  City.create!(
    name: Faker::Address.city,
  )
end

100.times do |i|
  Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    zip_code: Faker::Address.zip_code,
    city_id: City.all.shuffle.last.id,
  )
end

200.times do |i|
  Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city_id: City.all.shuffle.last.id,
  )
end
puts "SEED TERMINE !"