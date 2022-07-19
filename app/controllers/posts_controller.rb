class PostsController < ApplicationController
  def index
    @post = Post.new

    # スタンプを押してない投稿だけ取り出す
    @posts = Post&.where(stamped: false)
    gon.json = @posts.to_json
  end
  
  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path, success: "投稿に成功しました！"
    else
      render turbo_stream: turbo_stream.replace(
        'post_error',
        partial: 'shared/error_messages',
        locals: { object: @post },
      )
    end
  end

  def stamped
    post = Post.find(params[:id])
    current_user.stamps_posts << post
    redirect_to root_path, success: "スタンプを完了しました！"
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy!
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :latlng, :image)
  end
end
