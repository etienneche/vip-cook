# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.destroy_all

Recipe.create!([{
  title: "hummus",
  description: "pois chiche et coriandre",
  menu_spot: "dessert",
  wine: "Pic saint lou"
},
{
  title: "patte au beurre",
  description: "patte et beurre",
  menu_spot: "entree",
  wine: "Pic saint lou"
},
{
  title: "jambalaya",
  description: "poulet legume epice",
  menu_spot: "plat",
  wine: "Pic saint lou"
}])

p "Created #{Recipe.count} recipes"
