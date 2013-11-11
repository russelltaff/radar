class UsersController < ApplicationController 
  
  def new 
    @user = User.new
    render :new
  end 

  def create
    @user = User.new(user_params)
    if @user.save

      redirect_to user_path(@user)
    # return to signup page
    else
      render :new
    end
  end 

  def show 
    render :show
  end 

  private

  # security ########
  def user_params
    params.require(:user).permit(:email, :name, :type, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def authorized!
    unless @user.id == session[:user_id]
      redirect_to user_path(session[:user_id])
    end
  end


end 