class SessionsController < ApplicationController
  def new
  end
  
  #Authentication for user submitted in login information
  def create
    user = User.find_by_email(params[:email])
    
    # If user email and password match what is in the user table, store the user ID in a session and display a logged in message
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged In!", :style => "float: right;"
    #If wrong password give an error
    else
      flash[:notice] = "Invalid username/password combination"
      render "new"
    end
  end
  
  #Allow log out, change the session id to nil
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged Out!", :style => "float: right;"
  end
end
