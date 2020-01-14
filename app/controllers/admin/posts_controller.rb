class Admin::PostsController < ApplicationController
  before_action :set_post, only: [:edit, :update, :destroy]

  def new
    @post = Post.new
    authorize @post
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
    authorize @post
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    if @post.featured
      @post.destroy
      Post.first.update(featured: true)
    else
      @post.destroy
    end
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find(params[:id])
    authorize @post
  end

  def post_params
    params.require(:post).permit(:title, :text, :photo, :time)
  end
end
