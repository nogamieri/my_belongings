class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  #許可するパラメーターの設定
  before_action:configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    buys_path
  end

  protected

  def after_sign_out_path_for(resource)
    root_path
  end

  def configure_permitted_parameters
    added_attrs = [:username, :email, :password, :password_confirmation, :remember_me]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end



end
