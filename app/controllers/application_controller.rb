class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale_from_url
  
  def current_ability
    @current_ability ||= Ability.new(current_admin)
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    authenticate_admin!
  end
  
  # def after_sign_in_path_for(resource)
  #   puts "asdfasdf: " + resource.inspect
  #   super
  # end
end
