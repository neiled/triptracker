class ApplicationController < ActionController::Base
  protect_from_forgery

  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      user_trip_url(resource, resource.trips.first)
    else
      super
    end
  end
    
end
