require 'json'
require 'open-uri'
puts 'Cleaning database...'

Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
buffer = open(url).read
results = JSON.parse(buffer)

results['drinks'].each do |result| 
    result.each do |k, v| 
        ing = Ingredient.new(name: v)
        random = (1..10).to_a.sample
        ing.save
        new_cocktail = Cocktail.new(name: "#{Faker::Name.name.split(' ')[-1]} #{Faker::Beer.hop}")
        new_cocktail.save
        dose = Dose.new(description: "#{random}cl", ingredient: ing, cocktail: new_cocktail)
        dose.save
    end
end