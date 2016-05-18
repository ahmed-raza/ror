class PostsController < ApplicationController
  def index
    @posts = Post.all

    respond_to do |format|
      format.html
      format.json { render json: @posts }
      format.xml { render xml: @posts }
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    params[:post]
    @post = Post.new(params[:post])
    if @post.save
      redirect_to posts_path, :notice => "Your post was saved!"
    else
      flash.now[:error] = "Could not save Post"
      render "new"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to posts_path, :notice => "Your post has been updated."
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => "Your post has been deleted!"
  end
end
