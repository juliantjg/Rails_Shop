class ItemsController < ApplicationController
    def show
        @item = Item.find(params[:id])
        if current_user != nil and Shoppingbag.find_by(item_id: params[:id]) != nil
            @chosen = true
        else
            @chosen = false
        end
    end

end
