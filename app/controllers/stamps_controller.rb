class StampsController < ApplicationController
  def index
    @posts = current_user.posts
    gon.json = @posts.to_json
  end

  def set
    post = Post.find(params[:id])
    current_user.stamps_posts << post
    redirect_to stamps_path, success: "ラリーを開始します！"
  end
end
