class ReleasesController < ApplicationController
  def new
    @buy = Buy.find(params[:buy_id])
    @release = Release.new
  end

  def create
    @buy = Buy.find(params[:buy_id])
    @release = Release.new(release_params)
    @release.buy_id = @buy.id
    if @release.save!
      redirect_to buy_release_path(@buy.id, @release.id)
    else
      flash.now[:error] = '投稿に失敗しました'
      render :new
    end
  end


  def index
    # @user = User.find(params[:id])
    @releases = Release.all.order("created_at DESC").page(params[:page]).per(9)
  end

  def show
    @release = Release.find(params[:id])
    @buy = Buy.find(params[:id])
  end
  def destroy
    @release = Release.find(params[:id])
    @release.destroy
    redirect_to releases_path
  end

  private
    def release_params
      params.require(:release).permit(:release_image, :release_caption, :release_message)
    end
  end
