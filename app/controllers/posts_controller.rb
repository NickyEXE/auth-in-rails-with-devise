class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all
    @like = Like.new
  end
end
