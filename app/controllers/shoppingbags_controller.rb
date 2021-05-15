class ShoppingbagsController < ApplicationController
    def index
        if current_user == nil 
            redirect_to("/home/login")
        else
            shoppingbag1 = Shoppingbag.where(user_id: current_user.id)

            if shoppingbag1.size == 0 
                @empty = true
            else
                @empty = false
                @size = shoppingbag1.size
                @shoppingbag = shoppingbag1
                
                totalPrice = 0
                for shop in shoppingbag1 do
                    totalPrice += (Item.find(shop.item_id).price * shop.quantity)
                end

                @subTotal = totalPrice
            end
        end
    end

    def add
        if current_user == nil
            redirect_to("/home/login")
        else
            item_id = params[:itemId]
            colour = params[:colour]
            size = params[:size]
            quantity = params[:quantity]
            
            Shoppingbag.create(user_id: current_user.id, item_id: item_id, colour: colour, size: size, quantity: quantity)

            redirect_to("/shoppingbag/index")
        end
    end

    def checkout
        Shoppingbag.where(user_id: current_user).destroy_all
        # bags = Shoppingbag.where(user_id: current_user.id)
        # bags.each do |bag|
        #     bag.destroy
        # end
        redirect_to("/shoppingbag/index")
    end
end
