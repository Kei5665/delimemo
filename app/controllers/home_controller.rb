class HomeController < ApplicationController
  def index
    @post = Post.new

    # スタンプを押してない投稿だけ取り出す
    @posts = Post&.where(stamped: false)
    gon.json = @posts.to_json
  end
end
