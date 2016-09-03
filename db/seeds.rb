# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name: "Blake", email: "blake@gmail.com", password: "password")

Ship.create!(name: "Apollo 411", user_id: 1)
ShipUpgrade.create!(name: "Cannon Damage Sigma" ,recipe: "Iron x 50 Thamium9 x 50" , category: "Weapon",ship_id: 1)

Multitool.create!(name: "Destiny", user_id: 1)
Exosuit.create!(name: "Wolverine", user_id:1)
