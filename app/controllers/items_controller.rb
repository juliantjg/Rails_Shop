class ItemsController < ApplicationController
    def show
        @item = Item.find(params[:id])
        if Shoppingbag.find_by(item_id: params[:id]) != nil
            @chosen = true
        elsif 
            @chosen = false
        end
    end

end
