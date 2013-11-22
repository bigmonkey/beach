# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'DEFAULT USERS'
user = User.create email: ENV['ADMIN_EMAIL'].dup, password: ENV['ADMIN_EMAIL_PW'].dup, password_confirmation: ENV['ADMIN_EMAIL_PW'].dup
puts 'user email: ' << user.email