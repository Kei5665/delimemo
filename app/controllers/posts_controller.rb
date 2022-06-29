class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    else
      render turbo_stream: turbo_stream.replace(
        'post_error',
        partial: 'shared/error_messages',
        locals: { object: @post },
      )
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy!
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :latlng)
  end
end
