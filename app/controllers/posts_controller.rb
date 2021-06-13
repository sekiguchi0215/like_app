class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user).order(:created_at)
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def updata
  end

  def destroy
  end
end
