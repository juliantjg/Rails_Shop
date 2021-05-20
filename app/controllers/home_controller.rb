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


  def passwordsubmit
    passwordEmail = params[:email]
    
    if User.find_by(email: passwordEmail) == nil
      flash[:danger] = "Email does not exist"
    else
      user1 = User.find_by(email: passwordEmail)
      user1.generate_token(:password_token)
      user1.password_token_created_at = Time.zone.now
      user1.save
      NewsletterMailer.passwordMailer(user1).deliver
      flash[:success] = "Password reset email sent!"
    end
    redirect_to("/forgotpassword")
  end

  def updatepass
    @message=""
    emailToken = params[:token]
    new_pass = params[:password]
    c_pass = params[:c_password]

    #user = User.find_by(password_token: emailToken)
    #if user.password_token_created_at < 30.minutes.ago
      #@message="Token has expired"
      #redirect_to forgotpassword_edit_path
    #end
    if new_pass.size < 8 or new_pass.size > 20
      @message="Password must be 8-20 characters long"
    elsif new_pass != c_pass
      @message="Confirm password incorrect"
    else
      #user = User.find_by(password_token: emailToken)
      user.password = new_pass
      user.save
      @message="Update Successful"
      redirect_to("/login")
    end
  end

  def help
  end

  def save
    location = params[:location]
    itemId_toSave = params[:itemId]


    itemTargetList = Item.where(id: itemId_toSave)
    itemTarget = itemTargetList[0]
    itemSaveList = itemTarget.saveList

    if itemSaveList == false
      itemTarget.popularity += 1
    end

    itemTarget.saveList = !itemSaveList
    itemTarget.save

    redirect_to(location)
  end

  def login
  end
end
