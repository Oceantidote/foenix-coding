class PostsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @posts = policy_scope(Post)
    authorize @posts
  end

  def show
    @post = Post.find(params[:id])
    authorize @post
  end
end
