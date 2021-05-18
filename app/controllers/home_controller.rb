class HomeController < ApplicationController
  def index
    # Generate the random first item
    randomNum = rand(1..Item.count)
    retrievedItem = Item.find(randomNum)

    # Do not show item from saveList
    while retrievedItem.saveList == true 
      randomNum = rand(1..Item.count)
      retrievedItem = Item.find(randomNum)
    end

    @randomItem = retrievedItem

    # Generate the 6 most popular items
    items = Item.all
    sortedItems = items.sort_by &:popularity
    @popularItems = sortedItems.reverse.first(3)

    # Get number of items from different collections
    @womenSize = Item.where(category: 'women').size
    @menSize = Item.where(category: 'men').size
    @kidSize = Item.where(category: 'kids').size
    @newSize = Item.where(category: 'new').size
  end

  def collection
    parameter = params[:type]
    if parameter == 'all'
      @type = 'ALL'
      @items = Item.all
    elsif parameter == 'save'
      @type = 'SAVE'
      @items = Item.where(saveList:true)
    else
      @type = params[:type].upcase
      @items = Item.where(category: params[:type])
    end
  end

  def submit
    NewsletterMailer.newsMailer(params[:email]).deliver
    
    #redirect_to("/home")
  end

  def help
  end

  def save
    location = params[:location]
    itemId_toSave = params[:itemId]
    itemTargetList = Item.where(id: itemId_toSave)
    itemTarget = itemTargetList[0]
    itemSaveList = itemTarget.saveList
    itemTarget.saveList = !itemSaveList
    itemTarget.save

    redirect_to(location)
  end

  def login
  end
end
