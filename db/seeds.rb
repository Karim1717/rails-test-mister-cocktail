# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require "open-uri"

filepath = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

 response = open(filepath).read

# puts response[1]

# puts URI.parse(response).class
# serialized_cocktails = File.read(filepath)

 cocktails = JSON.parse(response)

array = cocktails.values

array[0].each do |drink|
  puts souzai = drink.values
 Ingredient.create(name: "#{souzai}")
end



Cocktail.destroy_all
Ingredient.destroy_all
Dose.destroy_all
lemon_juice = Ingredient.create(name: "lemon_juice")
lime = Ingredient.create(name: "lime")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")
pisco = Ingredient.create(name: "pisco")
kiwi = Ingredient.create(name: "kiwi")
bitter = Ingredient.create(name: "bitter")
rum = Ingredient.create(name: "rum")
gin = Ingredient.create(name: "gin")
vodka = Ingredient.create(name: "vodka")
ginger_beer = Ingredient.create(name: "ginger beer")
sugar = Ingredient.create(name: "sugar")
cocao_powder = Ingredient.create(name: "cocao powder")
ouzo = Ingredient.create(name: "ouzo")
orange = Ingredient.create(name: "orange")
egg = Ingredient.create(name: "egg")
campari = Ingredient.create(name: "campari")
vermouth = Ingredient.create(name: "vermouth")
cognac = Ingredient.create(name: "cognac")
cointreau = Ingredient.create(name: "cointreau")
soda = Ingredient.create(name: "soda")
negroni = Cocktail.create(name: "Negroni", image: "negroni.png")
Dose.create(description: '1oz', ingredient: campari, cocktail: negroni)
Dose.create(description: '1oz', ingredient: gin, cocktail: negroni)
Dose.create(description: '1oz', ingredient: vermouth, cocktail: negroni)
old_fashioned = Cocktail.create(name: "Old Fashioned", image: "old-fashioned.png")
Dose.create(description: '1oz', ingredient: sugar, cocktail: old_fashioned)
Dose.create(description: '1oz', ingredient: bitter, cocktail: old_fashioned)
Dose.create(description: '1oz', ingredient: orange, cocktail: old_fashioned)
sidecar = Cocktail.create(name: "Sidecar", image: "sidecar.png")
Dose.create(description: '1oz', ingredient: lemon_juice, cocktail: sidecar)
Dose.create(description: '1oz', ingredient: cognac, cocktail: sidecar)
Dose.create(description: '1oz', ingredient: cointreau, cocktail: sidecar)
dark_n_stormy = Cocktail.create(name: "Dark'N'Stormy", image: "dark-n-stormy.png")
Dose.create(description: '1oz', ingredient: rum, cocktail: dark_n_stormy)
Dose.create(description: '1oz', ingredient: ginger_beer, cocktail: dark_n_stormy)
Dose.create(description: '1oz', ingredient: lemon_juice, cocktail: dark_n_stormy)
mojito = Cocktail.create(name: "Mojito", image: "mojito.png")
Dose.create(description: '1oz', ingredient: mint_leaves, cocktail: mojito)
Dose.create(description: '1oz', ingredient: rum, cocktail: mojito)
Dose.create(description: '1oz', ingredient: sugar, cocktail: mojito)
Dose.create(description: '1oz', ingredient: ice, cocktail: mojito)
Dose.create(description: '1oz', ingredient: soda, cocktail: mojito)
Dose.create(description: '1oz', ingredient: lime, cocktail: mojito)
mai_tai = Cocktail.create(name: "Mai-Tai", image: "mai-tai.png")
Dose.create(description: '1oz', ingredient: rum, cocktail: mai_tai)
Dose.create(description: '1oz', ingredient: cointreau, cocktail: mai_tai)
Dose.create(description: '1oz', ingredient: sugar, cocktail: mai_tai)
Dose.create(description: '1oz', ingredient: lemon_juice, cocktail: mai_tai)

