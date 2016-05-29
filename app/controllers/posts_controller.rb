class PostsController < ApplicationController
  def index

  end

  def new
  end

  def index
    @posts = Post.all.order(id: :asc)
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end
  def edit
    @post = Post.find(params[:id])
  end
  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end
  private
  def post_params
    params.require(:post).permit(:tittle, :content)
  end
end
