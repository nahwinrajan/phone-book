# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'


Contact.destroy_all

100.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  email = Faker::Internet.email(first_name)
  scrambledName = last_name.split(//).sort_by{rand}.join{''}

  contact = Contact.create(
    :first_name =>  first_name,
    :last_name  =>  last_name,
    :job  =>  "#{Faker::Name.title}",
    :address_line1  =>  "#{Faker::Address.street_address}",
    :address_line2  =>  "#{Faker::Address.street_name}",
    :city =>  "#{Faker::Address.city}",
    :country  =>  "#{Faker::Address.country}",
    :phone  =>  "#{Faker::PhoneNumber.cell_phone}",
    :email  =>  email,
    :twitter_acc => "@#{scrambledName}-#{first_name}"
    )
end
