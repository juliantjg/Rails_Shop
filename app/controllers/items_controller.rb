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

    def filter
        @message = "Please check the filters below"
        if params[:type] != nil and params[:colour] != nil and params[:size] != nil
            collection_filter = params[:type]
            colour_filter = params[:colour]
            size_filter = params[:size]

            collection_filter.each do |collection|
                itemsTarget = Item.where(category: collection)
                
                itemsTarget.each do |item|
                    item.colour_filter = colour_filter[0]
                    item.size_filter = size_filter
                    item.save
                end
            end
            @message = "Filter Saved!"
        end
    end
end
