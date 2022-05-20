# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require 'faker'

Movie.destroy_all

puts 'Creating 10 fake movies...'

10.times do
  movie = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Lorem.paragraph(sentence_count: 4),
    poster_url: "https://picsum.photos/seed/picsum/200/300",
    rating: rand(1..10)
  )
  movie.save!
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
end
