class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(
                    user_name: params[:user_name],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation]
                    )

    if user.save
      session[:user_id] = user.id
      flash[:success] = "New User Successfully Created!"
      redirect_to '/'
    else
      flash[:warning] = "Invalid Username or Password"
      redirect_to '/signup'
    end
        
  end
end
