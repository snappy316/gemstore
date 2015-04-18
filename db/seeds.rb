# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create!(
  name: "Azurite",
  description: "Some gems have hidden qualities beyond their luster, beyond their shine... Azurite is one of those gems.",
  image: "images/gem-02.gif",
  shine: 8,
  price: 110.50,
  rarity: 7,
  color: "#CCC",
  faces: 14
)

Product.create!(
  name: "Bloodstone",
  description: "Origin of the Bloodstone is unknown, hence its low value. It has a very high shine and 12 sides, however.",
  image: "images/gem-01.gif",
  shine: 9,
  price: 22.90,
  rarity: 6,
  color: "#EEE",
  faces: 12
)

Product.create!(
  name: "Zircon",
  description: "Zircon is our most coveted and sought after gem. You will pay much to be the proud owner of this gorgeous and high shine gem.",
  image: "images/gem-06.gif",
  shine: 70,
  price: 1100,
  rarity: 2,
  color: "#000",
  faces: 6
)

Review.create!(
  product_id: 1,
  stars: 5,
  body: "I love this gem!",
  author: "joe@example.org"
)

Review.create!(
  product_id: 1,
  stars: 1,
  body: "This gem sucks.",
  author: "tim@example.org"
)

Review.create!(
  product_id: 2,
  stars: 3,
  body: "I think this gem was just OK, could honestly use more shine, IMO.",
  author: "JimmyDean@example.org"
)

Review.create!(
  product_id: 2,
  stars: 4,
  body: "Any gem with 12 faces is for me!",
  author: "gemsRock@example.org"
)

Review.create!(
  product_id: 3,
  stars: 1,
  body: "This gem is WAY too expensive for its rarity value.",
  author: "turtleguyy@example.org"
)

Review.create!(
  product_id: 3,
  stars: 1,
  body: "BBW: High Shine != High Quality.",
  author: "LouisW407@example.org"
)

Review.create!(
  product_id: 3,
  stars: 1,
  body: "Don't waste your rubles!",
  author: "nat@example.org"
)
