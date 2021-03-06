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
  u.name = Faker::Name.name
  u.email = Faker::Internet.email(u.name)
  u.password = Faker::Internet.password(8)
  u.role = 0
  u.save
end

100.times do
  product_name = Faker::Commerce.product_name
  PayolaModel.create({
    :name => Faker::Commerce.product_name,
    :price => (Faker::Commerce.price * 100).to_i,
    :permalink => product_name.parameterize,
    :remote_image_url => "http://loremflickr.com/640/480/#{product_name.split.last.downcase}"
  })
  puts "Created '#{product_name}'."
end