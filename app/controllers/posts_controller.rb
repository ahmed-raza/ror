class PostsController < ApplicationController
  # http_basic_authenticate_with :name => "ahmed", :password => "raza", except: :index

  after_filter :require_login, only: :index
  # before_filter :require_login, only: :create
  before_filter :authenticate_user!, only: [:new]

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

  private

  def require_login
    p "I am after filter"
  end

  def logged_in?
    return false
  end

end
