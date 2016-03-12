class LikesController < ApplicationController
 protect_from_forgery
  def create
    @resource = find_resource
    @like = Like.create(like_params)

    # Respond to different request formats
    respond_to do |format|
      format.html {redirect_to :back}
      format.js
      format.json { render json: @user.errors, status: :unprocessable_entity }
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