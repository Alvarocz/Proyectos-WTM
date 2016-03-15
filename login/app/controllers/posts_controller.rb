class PostsController < ApplicationController
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
    @post.save
    redirect_to posts_path
  end

  def post_params
    params.require(:post).permit(:title, :user_id, :message)
  end
end
