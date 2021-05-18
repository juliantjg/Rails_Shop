# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Test1', email: 'test1@email.com', password: 'testtest', password_confirmation: 'testtest')


Item.create(name: 'Winter Vibes', price: 30, description: 'Cold and Brilliant start', saveList: false, category: 'men', popularity: 24, colour_filter: "", size_filter: "")
Item.create(name: 'Black Knit Sweatshirt', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 23, colour_filter: "", size_filter: "")
Item.create(name: 'Skulls Sweater', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 22, colour_filter: "", size_filter: "")
Item.create(name: 'Slim Fit Jeans', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 21, colour_filter: "", size_filter: "")
Item.create(name: 'Grey Sweatpants', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 20, colour_filter: "", size_filter: "")
Item.create(name: 'Black Sweatpants', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 19, colour_filter: "", size_filter: "")

Item.create(name: 'Greyish Purple Blouse', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 18, colour_filter: "", size_filter: "")
Item.create(name: 'Printed Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 17, colour_filter: "", size_filter: "")
Item.create(name: 'Blue Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 16, colour_filter: "", size_filter: "")
Item.create(name: 'Green Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 15, colour_filter: "", size_filter: "")
Item.create(name: 'Yellow Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 14, colour_filter: "", size_filter: "")
Item.create(name: 'White Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 13, colour_filter: "", size_filter: "")

Item.create(name: 'Blue Shirt', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 12, colour_filter: "", size_filter: "")
Item.create(name: 'Blue Hoodie', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 11, colour_filter: "", size_filter: "")
Item.create(name: 'Blue Pants', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 10, colour_filter: "", size_filter: "")
Item.create(name: 'Red Shirt', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 9, colour_filter: "", size_filter: "")
Item.create(name: 'Red Hoodie', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 8, colour_filter: "", size_filter: "")
Item.create(name: 'Red Pants', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 7, colour_filter: "", size_filter: "")

Item.create(name: 'Black Colourful Hoodie', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 6, colour_filter: "", size_filter: "")
Item.create(name: 'Red Hat', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 5, colour_filter: "", size_filter: "")
Item.create(name: 'Yellow Dress', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 4, colour_filter: "", size_filter: "")
Item.create(name: 'Boxing Gloves', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 3, colour_filter: "", size_filter: "")
Item.create(name: 'Black Sneakers', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 2, colour_filter: "", size_filter: "")
Item.create(name: 'Yellow Hoodie', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 1, colour_filter: "", size_filter: "")