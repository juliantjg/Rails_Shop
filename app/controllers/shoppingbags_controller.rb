class ShoppingbagsController < ApplicationController
    def index
        
        @shoppingbag = Shoppingbag.where(user_id: current_user.id)
        
    end

    def add
        item_id = params[:itemId]
        colour = params[:colour]
        size = params[:size]
        quantity = params[:quantity]
        
        Shoppingbag.create(user_id: current_user.id, item_id: item_id, colour: colour, size: size, quantity: quantity)

        redirect_to("/shoppingbag/index")
    end
end
