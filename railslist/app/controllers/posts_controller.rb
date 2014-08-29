class PostsController < ApplicationController

  def index
    @posts = Post.all
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @post.category_id = params[:id]
    @post.save
    render :json => @post.to_json
  end

  def show
    @post = Post.find params[:post_id]
  end

  private
    def post_params
      params.require(:post).permit(:title, :description, :email, :price, :category_id)
    end
end
