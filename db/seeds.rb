# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
# Environment variables (ENV['...']) can be set in the file .env file.

30.times do
  u = User.new
  u.email = Faker::Internet.email(u.name)
  u.password = Faker::Internet.password(8)
  u.name = Faker::Name.name
  u.role = 0
  u.save
end

100.times do
  p = PayolaModel.new
  p.price = Faker::Commerce.price
  p.name = Faker::Commerce.product_name
  p.permalink = Rails.application.secrets.domain_name + p.name
  p.image = 'http://loremflickr.com/640/480/product'
  p.save
end