class ReleasesController < ApplicationController
  def new
    @release = Release.new
  end

  def create
    @release = Release.new(release_params)
    @release.buy_id = current_user.id
    if @release.save
      redirect_to release_path(@release.id)
    else
      render :new
    end
  end

  def index
    @user = User.find(params[:id])    
    @releases = @user.Release.all.order("created_at DESC").page(params[:page]).per(9)
  end

  def show
    @release = Release.find(params[:id])
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
