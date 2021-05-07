class HomeController < ApplicationController
  def index
    # Generate the random first item
    randomNum = rand(1..Item.count)
    @randomItem = Item.find(randomNum)
    
    # Generate the 6 most popular items
    items = Item.all
    sortedItems = items.sort_by &:popularity
    @popularItems = sortedItems.reverse.first(6)
  end

  def collection
    @type = params[:type].upcase
    @items = Item.where(category: params[:type])
  end
end
