class UsersController < ApplicationController  
  before_action :authenticated!, :set_user, :authorized!, except: [:new, :create, :welcome]
  #TODO users should be able to look at other users' profiles
  def new 
    @user = User.new
    render :new
  end 
  
  def create
    @user = User.new(user_params)
 
    if @user.save
      # return to signup page
      redirect_to new_session_path
    else
      redirect_to new_session_path
    end
  end 

  private

  # security ########
  def user_params
    params.require(:user).permit(:name, :type, :email, :password, :password_confirmation)
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