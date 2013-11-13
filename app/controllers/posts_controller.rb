class PostsController < ApplicationController  

  def new 
    @post = Post.new
    render :new 
  end 

  def create
    @post = Post.create(post_params)
  end  

private

  # security ########
  def post_params
    params.require(:post).permit(:user_id, :for_hire, :description, :position_type)
  end

end