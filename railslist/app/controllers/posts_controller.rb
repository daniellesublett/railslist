class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to show_path(@post)
    else
      render :new
    end
  end

  def show
    p params
  end

  private
    def post_params
      params.require(:post).permit(:title, :description, :email, :price, :category_id)
    end

end
