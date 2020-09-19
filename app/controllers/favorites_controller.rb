class FavoritesController < ApplicationController
  def create
    @buy =Buy.find(params[:buy_id])
    favorite = current_user.favorites.build(buy_id: params[:buy_id])
    favorite.save
  end

  def destroy
    @buy =Buy.find(params[:buy_id])
    favorite = Favorite.find_by(buy_id: params[:buy_id], user_id: current_user.id)
    favorite.destroy
  end
end
