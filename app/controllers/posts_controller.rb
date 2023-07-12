class PostsController < ApplicationController
  def index
    if session[:email].nil?
      render json: { message: 'User not logged in.' }
    else
      @posts = Post.all
      render json: @posts, status: :ok
    end
  end
end
