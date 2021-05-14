class ShoppingbagsController < ApplicationController
    def index
        # user = User.find(current_user.id)
        item_id = params[:itemId]
        colour = params[:colour]
        size = params[:size]
        quantity = params[:quantity]
        
        current_user.shoppingbags.new(item_id: item_id, colour: colour, size: size, quantity: quantity)
        
        @bag = current_user.shoppingbags.size
    end
end
