class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts = Post.where(user_id: current_user.id)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new 
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post].permit(:title, :content))
    @post.user = current_user
    
   if @post.save
     redirect_to posts_path, :notice => "Your post was saved."
     
    else
      render "new"
    end
  end
  
  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    
    if @post.update_attributes(params[:post].permit(:title, :content))
      redirect_to posts_path, :notice => "Your post was updated."
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => "Your Post has been Deleted"
  end
end
