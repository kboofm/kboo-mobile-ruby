class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  helper_method :on_air_next
  helper_method :on_air_now
  helper_method :program_highlights
  helper_method :program_schedules

  def on_air_next
    OnAirNext.instance
  end

  def on_air_now
    OnAirNow.instance
  end

  def program_highlights
    ProgramHighlights.instance
  end

  def program_schedules
    ProgramSchedules.instance
  end

  def format_html?
    request.format.html?
  end

  def format_json?
  	request.format.json?
  end
end
