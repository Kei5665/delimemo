class HomeController < ApplicationController
  def index
    @post = Post.new

    @posts = Post&.all
    gon.json = @posts.to_json
  end
end
