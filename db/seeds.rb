# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Test1', email: 'test1@email.com', password: 'testtest', password_confirmation: 'testtest')
User.create(username: 'admin', email: 'admin@admin.com', password: 'Rails2021', password_confirmation: 'Rails2021')
User.create(username: 'RAD', email: 'rad2021rmit@gmail.com', password: 'Rails2021', password_confirmation: 'Rails2021')

Adminlist.create(email: 'admin@admin.com')


item1 = Item.create(name: 'Winter Vibes', price: 30, description: 'Cold and Brilliant start', saveList: false, category: 'men', popularity: 0, colour_filter: "", size_filter: "")
item1.images.build(image_url: "https://i.imgur.com/iOwwJQK.jpg")
item1.images.build(image_url: "https://i.imgur.com/GY6vYTn.jpg")
item1.images.build(image_url: "https://i.imgur.com/O8P0OPg.jpg")
item1.save

item2 = Item.create(name: 'Knit Sweatshirt', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 0, colour_filter: "", size_filter: "")
item2.images.build(image_url: "https://i.imgur.com/SrMPaUX.jpg")
item2.images.build(image_url: "https://i.imgur.com/HGsYAFy.jpg")
item2.images.build(image_url: "https://i.imgur.com/XWsfSBv.jpg")
item2.save

item3 = Item.create(name: 'Skulls Sweater', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 0, colour_filter: "", size_filter: "")
item3.images.build(image_url: "https://i.imgur.com/zqHe1ak.jpg")
item3.images.build(image_url: "https://i.imgur.com/mcV8a7g.jpg")
item3.images.build(image_url: "https://i.imgur.com/f5ErZ0O.jpg")
item3.save

item4 = Item.create(name: 'Slim Fit Jeans', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 0, colour_filter: "", size_filter: "")
item4.images.build(image_url: "https://i.imgur.com/zDnqGqL.jpg")
item4.images.build(image_url: "https://i.imgur.com/hHAv3au.jpg")
item4.images.build(image_url: "https://i.imgur.com/cncxeKq.jpg")
item4.save

item5 = Item.create(name: 'Short Sweatpants', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 0, colour_filter: "", size_filter: "")
item5.images.build(image_url: "https://i.imgur.com/ppmjcxS.jpg")
item5.images.build(image_url: "https://i.imgur.com/r8XcrtP.jpg")
item5.images.build(image_url: "https://i.imgur.com/FbTI4CF.jpg")
item5.save

item6 = Item.create(name: 'Long Sweatpants', price: 30, description: 'Mens Clothing', saveList: false, category: 'men', popularity: 0, colour_filter: "", size_filter: "")
item6.images.build(image_url: "https://i.imgur.com/QwK8pts.jpg")
item6.images.build(image_url: "https://i.imgur.com/Ynq4NYf.jpg")
item6.images.build(image_url: "https://i.imgur.com/NDkQjlu.jpg")
item6.save


item7 = Item.create(name: 'Colourful Blouse', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 0, colour_filter: "", size_filter: "")
item7.images.build(image_url: "https://i.imgur.com/2NJEEBR.jpg")
item7.images.build(image_url: "https://i.imgur.com/0pllahL.jpg")
item7.images.build(image_url: "https://i.imgur.com/clN7qUR.jpg")
item7.save

item8 = Item.create(name: 'Informal Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 0, colour_filter: "", size_filter: "")
item8.images.build(image_url: "https://i.imgur.com/iyT6tWN.jpg")
item8.images.build(image_url: "https://i.imgur.com/FySkhC9.jpg")
item8.images.build(image_url: "https://i.imgur.com/23wQzFz.jpg")
item8.save

item9 = Item.create(name: 'Formal Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 0, colour_filter: "", size_filter: "")
item9.images.build(image_url: "https://i.imgur.com/oYnsBFz.jpg")
item9.images.build(image_url: "https://i.imgur.com/vY2FEcG.jpg")
item9.images.build(image_url: "https://i.imgur.com/ijk7iEE.jpg")
item9.save

item10 = Item.create(name: 'Wedding Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 0, colour_filter: "", size_filter: "")
item10.images.build(image_url: "https://i.imgur.com/AiLiMdi.jpg")
item10.images.build(image_url: "https://i.imgur.com/ZxnZF4K.jpg")
item10.images.build(image_url: "https://i.imgur.com/1aEM6MY.jpg")
item10.save

item11 = Item.create(name: 'Beautiful Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 0, colour_filter: "", size_filter: "")
item11.images.build(image_url: "https://i.imgur.com/NCau72f.jpg")
item11.images.build(image_url: "https://i.imgur.com/apt759H.jpg")
item11.images.build(image_url: "https://i.imgur.com/qrPf6aK.jpg")
item11.save

item12 = Item.create(name: 'Colourful Dress', price: 30, description: 'Womens Clothing', saveList: false, category: 'women', popularity: 0, colour_filter: "", size_filter: "")
item12.images.build(image_url: "https://i.imgur.com/FHjyjHG.jpg")
item12.images.build(image_url: "https://i.imgur.com/d4LFWUG.jpg")
item12.images.build(image_url: "https://i.imgur.com/dByabxG.jpg")
item12.save


item13 = Item.create(name: 'Kids Shirt', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 0, colour_filter: "", size_filter: "")
item13.images.build(image_url: "https://i.imgur.com/1timYrj.jpg")
item13.images.build(image_url: "https://i.imgur.com/QaRDU4L.jpg")
item13.images.build(image_url: "https://i.imgur.com/ZUlGc7Q.jpg")
item13.save

item14 = Item.create(name: 'Kids Hoodie', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 0, colour_filter: "", size_filter: "")
item14.images.build(image_url: "https://i.imgur.com/CFMp0jo.jpg")
item14.images.build(image_url: "https://i.imgur.com/Gw1vG6d.jpg")
item14.images.build(image_url: "https://i.imgur.com/ugzjUHi.jpg")
item14.save

item15 = Item.create(name: 'Kids Pants', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 0, colour_filter: "", size_filter: "")
item15.images.build(image_url: "https://i.imgur.com/FajlnB3.jpg")
item15.images.build(image_url: "https://i.imgur.com/sbLzHUN.jpg")
item15.images.build(image_url: "https://i.imgur.com/dbHwZrU.jpg")
item15.save

item16 = Item.create(name: 'Small Shirt', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 0, colour_filter: "", size_filter: "")
item16.images.build(image_url: "https://i.imgur.com/FOaLKTP.jpg")
item16.images.build(image_url: "https://i.imgur.com/DkZODHK.jpg")
item16.images.build(image_url: "https://i.imgur.com/LYIu9ew.jpg")
item16.save

item17 = Item.create(name: 'Small Hoodie', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 0, colour_filter: "", size_filter: "")
item17.images.build(image_url: "https://i.imgur.com/MZqUqcM.jpg")
item17.images.build(image_url: "https://i.imgur.com/RLUvogR.jpg")
item17.images.build(image_url: "https://i.imgur.com/FGDoFVh.jpg")
item17.save

item18 = Item.create(name: 'Small Pants', price: 30, description: 'Kids Clothing', saveList: false, category: 'kids', popularity: 0, colour_filter: "", size_filter: "")
item18.images.build(image_url: "https://i.imgur.com/wn5c96I.jpg")
item18.images.build(image_url: "https://i.imgur.com/yZIYxrQ.jpg")
item18.images.build(image_url: "https://i.imgur.com/z8VYzvA.jpg")
item18.save


item19 = Item.create(name: 'Colourful Hoodie', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 0, colour_filter: "", size_filter: "")
item19.images.build(image_url: "https://i.imgur.com/yfMyPjT.jpg")
item19.images.build(image_url: "https://i.imgur.com/8LLUp0n.jpg")
item19.images.build(image_url: "https://i.imgur.com/9FnLTft.jpg")
item19.save

item20 = Item.create(name: 'Big Hat', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 0, colour_filter: "", size_filter: "")
item20.images.build(image_url: "https://i.imgur.com/Bj6YT9h.jpg")
item20.images.build(image_url: "https://i.imgur.com/VX7pfGZ.jpg")
item20.images.build(image_url: "https://i.imgur.com/ZDIpHUT.jpg")
item20.save

item21 = Item.create(name: 'Long Dress', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 0, colour_filter: "", size_filter: "")
item21.images.build(image_url: "https://i.imgur.com/3WkvsAW.jpg")
item21.images.build(image_url: "https://i.imgur.com/LlNShH3.jpg")
item21.images.build(image_url: "https://i.imgur.com/B573I93.jpg")
item21.save

item22 = Item.create(name: 'Boxing Gloves', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 0, colour_filter: "", size_filter: "")
item22.images.build(image_url: "https://i.imgur.com/RXPQWhI.jpg")
item22.images.build(image_url: "https://i.imgur.com/XguBCT3.jpg")
item22.images.build(image_url: "https://i.imgur.com/ZlUOD61.jpg")
item22.save

item23 = Item.create(name: 'Beautiful Sneakers', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 0, colour_filter: "", size_filter: "")
item23.images.build(image_url: "https://i.imgur.com/CuxlYyO.jpg")
item23.images.build(image_url: "https://i.imgur.com/6XUPVZj.jpg")
item23.images.build(image_url: "https://i.imgur.com/fhu5cpH.jpg")
item23.save

item24 = Item.create(name: 'Cool Hoodie', price: 30, description: 'New Stuffs', saveList: false, category: 'new', popularity: 0, colour_filter: "", size_filter: "")
item24.images.build(image_url: "https://i.imgur.com/eqUt2EC.jpg")
item24.images.build(image_url: "https://i.imgur.com/bcxN6ui.jpg")
item24.images.build(image_url: "https://i.imgur.com/exKcwAr.jpg")
item24.save
