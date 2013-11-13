class PostsController < ApplicationController  

  def new 
    @post = Post.new
    render :new 
  end 

end 