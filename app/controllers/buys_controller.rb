class BuysController < ApplicationController

  def new
    @buy = Buy.new
  end

  def create
    @buy = Buy.new(buy_params)
    @buy.user_id = current_user.id
    if @buy.save
      redirect_to buy_path(@buy)
    else
      render :new
    end
  end

  def index
    @buys = Buy.all.order("created_at DESC").page(params[:page]).per(9)
  end

  def show
    @buy = Buy.find(params[:id])
    # @release = Release.find(params[:release_id])
  end

  def destroy
    @buy = Buy.find(params[:id])
    @buy.destroy
    redirect_to buys_path
  end

private
  def buy_params
    params.require(:buy).permit(:buy_post_image, :buy_caption, :buy_message, :buy_id)
  end
end
