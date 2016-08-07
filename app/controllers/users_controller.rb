class UsersController < ApplicationController
  # Allows new user to be created
  def new
    @user = User.new
  end
  
  # Saves user to the database or redisplay the form if there are any validation issues
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, notice: "Thank-you for enrolling!"
    else
      render "new"
    end
  end
  
  private
  
  # Create parameters available for :user
  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end
end
