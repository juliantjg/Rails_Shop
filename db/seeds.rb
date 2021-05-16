# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Test1', email: 'test1@email.com', password: 'testtest')


Item.create(name: 'Winter Vibes', price: 30, description: 'Cold and Brilliant start', saveList: false, category: 'men', popularity: 24, favourite: false)
Item.create(name: 'Black Knit Sweatshirt', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 23, favourite: false)
Item.create(name: 'Skulls Sweater', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 22, favourite: false)
Item.create(name: 'Slim Fit Jeans', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 21, favourite: false)
Item.create(name: 'Grey Sweatpants', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 20, favourite: false)
Item.create(name: 'Black Sweatpants', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 19, favourite: false)

Item.create(name: 'Greyish Purple Blouse', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 18, favourite: false)
Item.create(name: 'Printed Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 17, favourite: false)
Item.create(name: 'Blue Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 16, favourite: false)
Item.create(name: 'Green Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 15, favourite: false)
Item.create(name: 'Yellow Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 14, favourite: false)
Item.create(name: 'White Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 13, favourite: false)

Item.create(name: 'Blue Shirt', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 12, favourite: false)
Item.create(name: 'Blue Hoodie', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 11, favourite: false)
Item.create(name: 'Blue Pants', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 10, favourite: false)
Item.create(name: 'Red Shirt', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 9, favourite: false)
Item.create(name: 'Red Hoodie', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 8, favourite: false)
Item.create(name: 'Red Pants', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 7, favourite: false)

Item.create(name: 'Black Colourful Hoodie', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 6, favourite: false)
Item.create(name: 'Red Hat', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 5, favourite: false)
Item.create(name: 'Yellow Dress', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 4, favourite: false)
Item.create(name: 'Boxing Gloves', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 3, favourite: false)
Item.create(name: 'Black Sneakers', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 2, favourite: false)
Item.create(name: 'Yellow Hoodie', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 1, favourite: false)