# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Movie.destroy_all
puts "movies destroyed"


Movie.create(title: "Wonder Woman 1984", price: 2 )

Movie.create(title: "The Shawshank Redemption", price: 4 )

Movie.create(title: "Titanic", price: 2)

Movie.create(title: "Oceans Eight", price: 3)


puts "movies created"
