class PostsController < ApplicationController  
  before_action :authenticated!, :set_user
  before_action :authorized!, except: [:show]
  #TODO create post routes should not be accessible to unauthorized users

  def new 
    @post = Post.new
    render :new 
  end 

  def create
    #TODO validation for nil posts 
    #TODO make sure student can create only one hire-me post
    @post = Post.new(post_params)
    if @post.save 
      redirect_to current_user.type == "Student" ? student_post_path(current_user.id, @post.id) : employer_post_path(current_user.id, @post.id)
    else 
      render :new 
    end 
  end  

  def show 
    @post = Post.find(params[:id]) 
    render :show 
  end 

  def destroy
    
  end

private

  # security ########
  def post_params
    params.require(:post).permit(:user_id, :for_hire, :description, :position_type, :skill_tag_list)
  end

  def set_user
    params_id = current_user.type == "Student" ? params[:student_id] : params[:employer_id]
    @user = User.find(params_id)
  end

  def authorized!
    unless current_user.id == session[:user_id]
      redirect_to current_user.type == "Student" ? student_path(session[:user_id]) : employer_path(session[:user_id])
      # user_path(session[:user_id])
    end
  end

end