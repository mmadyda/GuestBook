class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @posts = Post.page(params[:page]).per(3)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "dziękujemy za wpis"
      redirect_to posts_path
    end

  end

  private

  def post_params
    params.require(:post).permit(:autor, :body, :picture)
  end

end
