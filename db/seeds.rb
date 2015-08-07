# Categories

category = Category.new(
    title: 'Benefits',
    approved: true
)

# require 'faker'

# # Create users
# 5.times do
#   user = User.new(
#      name:     Faker::Name.name,
#      email:    Faker::Internet.email,
#      password: Faker::Lorem.characters(10)
#   )
#   user.skip_confirmation!
#   user.save!
#  end
#  users = User.all


# # Create Categories
# 10.times do
#   Category.create!(
#     title: Faker::Lorem.sentence,
#     approved: true
# )
# end

# categories = Category.all

# # Create verbiage
# 20.times do
#   Verbiage.create!(
#      user: users.sample,
#      category: categories.sample,
#      title: Faker::Lorem.sentence,
#      body: Faker::Lorem.paragraph,
# )
# end

# puts 'Seeds finished'
# puts '#{Category.count} created!'
# puts '#{Verbiage.count} created!'

admin = User.new(
  name:     'Admin User',
  email:    'admin@example.com',
  password: 'helloworld',
  role:     'admin'
 )
 admin.skip_confirmation!
 admin.save!
 
 # Create a moderator
 moderator = User.new(
  name:     'Moderator User',
  email:    'moderator@example.com',
  password: 'helloworld',
  role:     'moderator'
 )
 moderator.skip_confirmation!
 moderator.save!
 
 # Create a member
 member = User.new(
  name:     'Member User',
  email:    'member@example.com',
  password: 'helloworld'
 )
 member.skip_confirmation!
 member.save!
