class ItemsController < ApplicationController
    def show
        @item = Item.find(params[:id])
        if current_user != nil and Shoppingbag.find_by(item_id: params[:id]) != nil
            @chosen = true
        else
            @chosen = false
        end
    end

    def search
        if params[:key] != nil and params[:key] != ""
            key = params[:key]
            @found = Item.where("name LIKE ?", "%" + key + "%")
        end
    end

    def favourite
        location = params[:location]
        itemId_toSave = params[:itemId]
        itemTargetList = Item.where(id: itemId_toSave)
        itemTarget = itemTargetList[0]
        itemFavourite = itemTarget.favourite
        itemTarget.favourite = !itemFavourite
        itemTarget.save

        redirect_to(location)
    end

    def filter
    end

    def submit_filter
        
    end

end
