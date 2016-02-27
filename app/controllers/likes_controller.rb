class LikesController < ApplicationController

  def create
    @like = Like.create(like_params)
    redirect_to :back
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :likeable_type, :likeable_id)
  end
end