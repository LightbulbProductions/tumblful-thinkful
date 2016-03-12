class TextPostsController < ApplicationController
  def index
    @text_posts = TextPost.all
  end
  
  
  def show
    @text_post = TextPost.find(params[:id])
  end

  def new
    @text_post = TextPost.new
  end

  def edit
    @text_post = TextPost.find(params[:id])
  end

  def create
    @text_post = TextPost.new(url: params[:text_post][:url], title: params[:text_post][:title])
    if @text_post.save
      redirect_to text_posts_path
    else
      @errors = @text_post.errors
      render :new
    end
  end

def update
@text_post = TextPost.find(params[:id])
if @text_post.update(link: params[:text_post][:url], title: params[:text_post][:title])
  redirect_to text_posts_path
else
  @errors = @text_post.errors
  render :edit
end
end

def delete
@text_post = TextPost.find(params[:id])
@text_post.destroy
redirect_to text_posts_path
end
private
  def text_post_params
    params.require(:text_post).permit(:url, :title)
  end
end
