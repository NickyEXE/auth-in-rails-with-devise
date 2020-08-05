class LikesController < ApplicationController

  def create
    Like.like_or_unlike(current_user.id, params[:like][:post_id])
    redirect_to posts_path
  end
end
