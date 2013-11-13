class UsersController < ApplicationController  
  before_action :authenticated!, :set_user, :authorized!, except: [:new, :create]
  #TODO users should be able to look at other users' profiles
  def new 
    @user = User.new
    render :new
  end 

  def create
    #TODO we need to render the profile edit page before we the profile page because of the error being thrown on login
    @user = User.new(user_params)
    # binding.pry
    if @user.save
      redirect_to @user.type == "Student" ? student_path(@user) : employer_path(@user)
      # return to signup page
    else
      render :new
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