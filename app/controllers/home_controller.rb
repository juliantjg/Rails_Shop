class HomeController < ApplicationController
  def index
    # Generate the random first item
    randomNum = rand(1..Item.count)
    @randomItem = Item.find(randomNum)
    
    # Generate the 6 most popular items
    items = Item.all
    sortedItems = items.sort_by &:popularity
    @popularItems = sortedItems.reverse.first(4)

    # Get number of items from different collections
    @womenSize = Item.where(category: 'women').size
    @menSize = Item.where(category: 'men').size
    @kidSize = Item.where(category: 'kids').size
    @newSize = Item.where(category: 'new').size
  end

  def collection
    parameter = params[:type]
    if parameter == 'all'
      @type = 'ALL ITEMS'
      @items = Item.all
    else
      @type = params[:type].upcase
      @items = Item.where(category: params[:type])
    end
  end

  def help
  end
end
