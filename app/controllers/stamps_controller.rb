class StampsController < ApplicationController
  def index
    @posts = current_user.posts&.where(stamped: true)
    gon.json = @posts.to_json
  end

  def set
    post = Post.find(params[:id])
    post.stamped = true
    post.save!
    redirect_to stamps_path, success: "ラリーを開始します！"
  end
end
