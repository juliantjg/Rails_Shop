# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Test1', email: 'test1@email.com', password: 'testtest', password_confirmation: 'testtest')


item1 = Item.create(name: 'Winter Vibes', price: 30, description: 'Cold and Brilliant start', saveList: false, category: 'men', popularity: 0, colour_filter: "", size_filter: "")
item1.images.build(image_url: "winterVibes1.jpg")
item1.save

item2 = Item.create(name: 'Knit Sweatshirt', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 0, colour_filter: "", size_filter: "")
item2.images.build(image_url: "winterVibes1.jpg")
item2.save

item3 = Item.create(name: 'Skulls Sweater', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 0, colour_filter: "", size_filter: "")
item3.images.build(image_url: "winterVibes1.jpg")
item3.save

item4 = Item.create(name: 'Slim Fit Jeans', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 0, colour_filter: "", size_filter: "")
item4.images.build(image_url: "winterVibes1.jpg")
item4.save

item5 = Item.create(name: 'Short Sweatpants', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 0, colour_filter: "", size_filter: "")
item5.images.build(image_url: "winterVibes1.jpg")
item5.save

item6 = Item.create(name: 'Long Sweatpants', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 0, colour_filter: "", size_filter: "")
item6.images.build(image_url: "winterVibes1.jpg")
item6.save


item7 = Item.create(name: 'Colourful Blouse', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 0, colour_filter: "", size_filter: "")
item7.images.build(image_url: "winterVibes1.jpg")
item7.save

item8 = Item.create(name: 'Informal Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 0, colour_filter: "", size_filter: "")
item8.images.build(image_url: "winterVibes1.jpg")
item8.save

item9 = Item.create(name: 'Formal Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 0, colour_filter: "", size_filter: "")
item9.images.build(image_url: "winterVibes1.jpg")
item9.save

item10 = Item.create(name: 'Wedding Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 0, colour_filter: "", size_filter: "")
item10.images.build(image_url: "winterVibes1.jpg")
item10.save

item11 = Item.create(name: 'Beautiful Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 0, colour_filter: "", size_filter: "")
item11.images.build(image_url: "winterVibes1.jpg")
item11.save

item12 = Item.create(name: 'Colourful Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 0, colour_filter: "", size_filter: "")
item12.images.build(image_url: "winterVibes1.jpg")
item12.save


item13 = Item.create(name: 'Kids Shirt', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 0, colour_filter: "", size_filter: "")
item13.images.build(image_url: "winterVibes1.jpg")
item13.save

item14 = Item.create(name: 'Kids Hoodie', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 0, colour_filter: "", size_filter: "")
item14.images.build(image_url: "winterVibes1.jpg")
item14.save

item15 = Item.create(name: 'Kids Pants', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 0, colour_filter: "", size_filter: "")
item15.images.build(image_url: "winterVibes1.jpg")
item15.save

item16 = Item.create(name: 'Small Shirt', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 0, colour_filter: "", size_filter: "")
item16.images.build(image_url: "winterVibes1.jpg")
item16.save

item17 = Item.create(name: 'Small Hoodie', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 0, colour_filter: "", size_filter: "")
item17.images.build(image_url: "winterVibes1.jpg")
item17.save

item18 = Item.create(name: 'Small Pants', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 0, colour_filter: "", size_filter: "")
item18.images.build(image_url: "winterVibes1.jpg")
item18.save


item19 = Item.create(name: 'Colourful Hoodie', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 0, colour_filter: "", size_filter: "")
item19.images.build(image_url: "winterVibes1.jpg")
item19.save

item20 = Item.create(name: 'Big Hat', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 0, colour_filter: "", size_filter: "")
item20.images.build(image_url: "winterVibes1.jpg")
item20.save

item21 = Item.create(name: 'Long Dress', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 0, colour_filter: "", size_filter: "")
item21.images.build(image_url: "winterVibes1.jpg")
item21.save

item22 = Item.create(name: 'Boxing Gloves', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 0, colour_filter: "", size_filter: "")
item22.images.build(image_url: "winterVibes1.jpg")
item22.save

item23 = Item.create(name: 'Beautiful Sneakers', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 0, colour_filter: "", size_filter: "")
item23.images.build(image_url: "winterVibes1.jpg")
item23.save

item24 = Item.create(name: 'Cool Hoodie', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 0, colour_filter: "", size_filter: "")
item24.images.build(image_url: "winterVibes1.jpg")
item24.save
