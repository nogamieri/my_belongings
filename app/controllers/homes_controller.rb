class HomesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:top]

  def top
    @buys = Buy.all.order("created_at DESC").page(params[:page]).per(9)
  end

end
