class UsersController < ApplicationController
  before_action :set_current_user, only: %i[edit update]

  def edit;end

  def update
    if @user.update(update_params)
      redirect_to root_path, success: "変更が成功しました"
    else
      flash.now[:danger] = "変更に失敗しました"
      render :edit
    end
  end

  private

  def update_params
    params.require(:user).permit(:name)
  end

  def set_current_user
    @user = current_user
  end
end
