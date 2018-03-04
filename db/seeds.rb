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
DataType.create!(name: 'business')
DataType.create!(name: 'private')
DataType.create!(name: 'public')
ContactType.create(name: 'Phone')
ContactType.create(name: 'Mobile')
ContactType.create(name: 'E_mail')
ContactType.create(name: 'Facebook')
ContactType.create(name: 'Skype')
ContactType.create(name: 'Xing')
ContactType.create(name: 'google+')
ContactType.create(name: 'Linkedin')
ContactType.create(name: 'Twitter')
ContactType.create(name: 'Instagram')
ContactType.create(name: 'YouTube')
ContactType.create(name: 'Snapchat')
ContactType.create(name: 'Tumblr')
ContactType.create(name: 'Whatsapp')
ContactType.create(name: 'viper')	
first_admin = User.create!(firstname: 'first', lastname: 'admin', gender: Gender.first)
Account.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', is_admin: true, user: first_admin ) if Rails.env.development?