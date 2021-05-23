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

  def unsubscribe
    if Subscribedemail.find_by(email: current_user.email) != nil
      Subscribedemail.where(email: current_user.email).destroy_all
    end
  end

  def submit
    NewsletterMailer.newsMailer(params[:email]).deliver

    if Subscribedemail.find_by(email: params[:email]) == nil
      Subscribedemail.create(email: params[:email])
    end
    
    #redirect_to("/home")
  end

  def passwordsubmit
    passwordEmail = params[:email]
    
    if User.find_by(email: passwordEmail) == nil
      flash[:danger] = "Email does not exist"
    else
      user1 = User.find_by(email: passwordEmail)

      passwordResetUser1 = PasswordResetUser.create(user_id: user1.id, password_token_created_at: Time.zone.now)
      passwordResetUser1.generate_token(:password_token)
      passwordResetUser1.save

      # user1.generate_token(:password_token)
      # user1.password_token_created_at = Time.zone.now
      # user1.save

      NewsletterMailer.passwordMailer(passwordResetUser1).deliver
      flash[:success] = "Password reset email sent!"
    end
    redirect_to("/forgotpassword")
  end

  def resetpass
    @message=""
    if params[:password] != nil and params[:c_password] != nil
      emailToken = params[:token]
      new_pass = params[:password]
      c_pass = params[:c_password]

      passwordResetUser = PasswordResetUser.find_by(password_token: emailToken)

      if passwordResetUser.password_token_created_at < 30.minutes.ago
        @message="Token has expired"
        redirect_to("/forgotpassword")
      end
      pattern =  /[a-zA-Z0-9]{8,20}/ 
      if new_pass.size < 8 or new_pass.size > 20 or !pattern.match?(new_pass)
        @message="Password must be 8-20 characters long excluding special characters"
        # @message = passwordResetUser.user_id
      elsif new_pass != c_pass
        @message="Confirm password incorrect"
      else
        user = User.find_by(id: passwordResetUser.user_id)
        user.password = new_pass
        user.save
        flash[:success] = "Password reset successful!"
        redirect_to("/login")
      end
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
