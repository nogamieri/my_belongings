class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @buys = @user.buys.order("created_at DESC").page(params[:page]).per(9)
    @favorite_buys = @user.favorite_buys
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def favorites
    @user = User.find_by(id: params[:id])
    @favorites = Favorite.where(user_id: @user.id)
  end



  private
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
