class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  
  helper_method :on_air_next
  
  def on_air_next
    OnAirNext.instance
  end  
end
