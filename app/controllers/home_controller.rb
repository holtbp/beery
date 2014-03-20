class HomeController < ApplicationController

  skip_filter :enforce_json_requests, only: :index

  def index
  end

end
