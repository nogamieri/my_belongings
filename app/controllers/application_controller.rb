class ApplicationController < ActionController::Base
#許可するパラメーターの設定
  before_action:configure_permitted_parameters
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name])  
  end
end
