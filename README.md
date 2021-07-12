# Rails Shop

By: Julian Tjiong & Cass Ilangantileke

## Overview

Rails Shop is a clothing vendor web application developed using Ruby on Rails framework.
Access the deployed app on Heroku: https://rails-shop-app.herokuapp.com/

## Functionalities

**Collection**

User can view the items categorized into collections: women, men, kids, and new arrivals. Collections are accessible from tab button on the top left corner.

**Saved List**

User can choose to save an item into the save list (accessible also from the tab button), and unsave an item.

**Home Page**

The home page will ramdomly shows an item and its details. Saving the item or reloading the page will prompt the website to show a different random item.

**Newsletter**

User can enter their email on the bottom part of the home page to sign up for subscription (just a single email).

**Product Detail**

Clicking on a product will show the product's details and other available images of the product.

**Filter**

User can choose filters from the collection page. User can pre-define the items' colour and size and choose which category to apply filters to. For instance, if a user choose to apply colour black and size M to the men and women category, both men and women items will have a pre-defined filter, that is black and size M.

**Popularity**

A saved item will have their popularity point incremented by 1. Meaning the more an item gets saved again and again, the higher their popularity points will be. Popular items will be listed on the home page. Unsaving an item will not decrease their popularity.

**Search Items**

The search page is available on the top right corner (magnifier icon).

**Login/Sign Up [Authenticated]**

On the top left corner user can access the sign in page for more sign in only functionalities. Unregistered user can also sign up with some constraints: Password must be 8-20 characters long excluding special characters, and must match re-enter password.

**Add to Bag [Authenticated]**

User can add an item to bag and put them into shopping bag. Upon adding to bag, user can choose the item's quantity, size, and colour. If a user haven't logged in, they will be redirected to the login page instead of the shopping bag page.

**Shopping Bag [Authenticated]**

A logged in user can access their shopping bags from the nav-bar (shopping cart icon). Each user has their own shopping bags consisting their chosen items. The shopping bag is persistent, meaning the items will stay even after logging out.

**Checkout Items [Authenticated]**

User can checkout their shopping bag items. On the shopping bag, they will be shown their items with purchase details (size, colour, quantity), and the total amount of payment. 

**Rating [Authenticated]**

If it is the user's first checkout, a rating page will appear and user can rate the app. Their ratings will be stored to the admin page.

**Profile [Authenticated]**

A logged in user can access their profile from the footer (bottom navbar). User can see their Gravatar profile, as well as access the following buttons: 
- Check pending orders (shopping bag)
- Update login details (change password)
- Subscription (cancel the email subscription)
- Logout

**Forget Password [Authenticated]**

A user can reset their password from the log in page. They can submit their email address and if it exists, an email with a password reset link will be sent to them and they can reset their password on a provided token expiry guaranteed page.

**Deletion [Authenticated]**

User can remove an item from the shopping bag.

**Admin Portal [Authenticated]**

The admin account can access the following link: https://rails-shop-app.herokuapp.com/admin. The page provides information regarding saved items, purchased items, overall rating and newsletter subscriptions. A regular or non-logged in user cannot access this page. Admin credentials are as following:
Email: admin@admin.com
Password: Rails2021



