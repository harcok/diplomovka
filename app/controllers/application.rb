# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  layout "shop"
  before_filter :autorizuj, :except => :prihlasenie
  session :session_key => '_obchod_session_id'
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery :secret => 'd59f7686b3f61c5f3bf4b2d355f6ce7a'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password

protected
  def autorizuj
    unless User.find_by_id(session[:user_id])
    session[:original_uri] = request.request_uri
    flash[:sprava] = "Prosim prihlaste sa."
    redirect_to :controller => :admin, :action => :prihlasenie
    end
  end
 
end
