class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def site
    redirect_to content_root_path
  end
end
