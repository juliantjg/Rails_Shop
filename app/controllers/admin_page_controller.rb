class AdminPageController < ApplicationController
    def index
        if current_user == nil 
            redirect_to("/home/login")
        else
            email = current_user.email
            is_admin = Adminlist.find_by(email: email)
            if is_admin == nil
                @authorized = false
            else
                @authorized = true
                @saved_items = Item.where(saveList: true)
                @terrible = Rating.where(rating: 'terrible').count
                @ok = Rating.where(rating: 'ok').count
                @good = Rating.where(rating: 'good').count
                @amazing = Rating.where(rating: 'amazing').count

                @purchased_items = Purchasedlist.all

                @subscribedemails = Subscribedemail.all
            end
        end
    end
end
