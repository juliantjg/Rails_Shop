class ItemsController < ApplicationController
    def show
        @item = Item.find(params[:id])
    end

    def tobag
        # newItem = current_user.shoppingbag.items.build()
    end
end
