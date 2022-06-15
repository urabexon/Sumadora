class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :post_brain_views, :post_viscera_views, :post_muscle_views
  protect_from_forgery with: :null_session

  private

  def after_sign_up_path_for(resource)
    root_path
  end

  def after_inactive_sign_up_path_for(resource)
    root_path
  end

  def after_sign_in_path_for(resource)
    root_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def post_brain_views
    $post_brain_views = PostBrain.order(impressions_count: "DESC").limit(5)
  end

  def post_viscera_views
    $post_viscera_views = PostViscera.order(impressions_count: "DESC").limit(5)
  end

  def post_muscle_views
    $post_muscle_views = PostMuscle.order(impressions_count: "DESC").limit(5)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end
end
