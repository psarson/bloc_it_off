require 'faker'

5.times do

  User.create!(
    email: Faker::Internet.email,
    password: 'password'
  )
end
users = User.all

10.times do

  item = Item.create!(
    user: users.sample,
    name: Faker::Company.catch_phrase
  )
end
items = Item.all

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} item created"
