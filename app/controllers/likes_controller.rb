class LikesController < ApplicationController

  def create
    @resource = find_resource
    @like = Like.create(like_params)

    # Respond to different request formats
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :likeable_type, :likeable_id)
  end

  def find_resource
    type = params[:like][:likeable_type].constantize
    id = params[:like][:likeable_id]

    type.send(:find, id)
  end
end