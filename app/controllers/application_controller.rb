class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :enforce_json_requests

  def enforce_json_requests
    unless params[:format] == 'json'
      return render :nothing => true, :status => 400
    end
  end

end
