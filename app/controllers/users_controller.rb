class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      # flash[:success] = "Welcome " + @user.username + " !"
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    email = current_user.email
    is_admin = Adminlist.find_by(email: email)
    if is_admin == nil
        @authorized = false
    else
        @authorized = true
    end
  end

  def update
    @message=""
    new_email = params[:email]
    new_pass = params[:password]
    c_pass = params[:c_password]
    if new_email.blank? or new_pass.blank?
      @message="Don't leave the form empty"
    else
      if new_pass.size < 8 or new_pass.size > 20
        @message="Password must be 8-20 characters long"
      elsif new_pass != c_pass
        @message="Confirm password incorrect"
      else
        user = User.find(current_user.id)
        user.email = new_email
        user.password = new_pass
        user.save
        @message="Update Successful"
      end
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :email, :password,
                      :password_confirmation)
    end
end
