class ApplicationController < ActionController::Base

  def forem_user
    current_user
  end
  helper_method :forem_user

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  # See section on Strong Parameters: https://github.com/plataformatec/devise
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :username
  end
end

  def create
    @text_post = current_user.text_posts.build(text_post_params)
    if @text_post.save
      redirect_to post_path(@text_post),
          notice: "Post Created!"
    else render :new, alert: "Error Creating Post."
    end
  end

private

def text_post_params
  params.require(:text_post).permit(:title, :body)
end