# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gender.create!(designation: 'Mr')
Gender.create!(designation: 'Ms')
Gender.create!(designation: 'Mrs')

Title.create!(title: 'Dr.')
Title.create!(title: 'Prof.')
Title.create!(title: 'M.B.A.')
first_admin = User.create!(firstname: 'first', lastname: 'admin', gender: Gender.first)
Account.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', user: first_admin ) if Rails.env.development?