class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all
  end

  def new
    if current_user
      @post = Post.new
    else
      redirect_to new_user_session_path, notice: 'You are not logged in.'
    end
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to posts_path
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.user_id = current_user.id
    @post.update(post_params)
    redirect_to posts_path
  end

  def post_params
    params.require(:post).permit(:title, :user_id, :message)
  end
end
