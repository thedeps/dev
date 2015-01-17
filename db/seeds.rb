# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create([
   {id: 1,name: 'Jogador'},
   {id: 2,name: 'Narrador'}
])

Admin.create([
    {email: 'alexmbezerrajp@gmail.com', password: '123', password_confirmation: '123'},
])


User.create([
    {login: 'alexmbezerrajp@gmail.com', id_steam: 'alexmbezerrajp@gmail.com' , email: 'alexmbezerrajp@gmail.com', password: '123', password_confirmation: '123', category_id: 1},
    {login: 'alexmb000@hotmail.com', id_steam: 'alexmb000@hotmail.com' , email: 'alexmb000@hotmail.com', password: '123', password_confirmation: '123', category_id: 1},
])
