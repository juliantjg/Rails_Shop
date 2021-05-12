class ItemsController < ApplicationController
    def show
        @item = Item.find(params[:id])
    end

    def tobag
        
    end
end
