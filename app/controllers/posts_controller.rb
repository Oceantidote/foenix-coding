class PostsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @posts = policy_scope(Post)
    authorize @posts
  end

  def show
    @post = Post.find(params[:id])
    authorize @post
    @posts = policy_scope(Post)
    authorize @posts
  end

  def new
    @post = Post.new
    authorize @post
  end

  def create
    @post = Post.new(post_params)
    authorize @post
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
    authorize @post
  end

  def update
    @post = Post.find(params[:id])
    authorize @post
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      flash[:error] = 'Didn\'t save'
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :text, :time, :image)
  end
end
