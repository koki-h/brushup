# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  # helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  secret_path = File.join(RAILS_ROOT, "config/secret.txt")
  if File.exist?(secret_path)
    secret = open(secret_path) { |io| io.read }.gsub(/\s/, '')
  end
  if secret.empty?
    characters = ("0".."9").to_a + ("a".."f").to_a
    secret = Array.new(128) { characters[rand(characters.size)] }.join
    open(secret_path, "w") { |io| io.write(secret) }
  end

  protect_from_forgery :secret => secret
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  
  I18n.default_locale = "ja"

  private
  def authorize
    unless session[:user_id] && (same_user = (session[:user_id].id == User.find(params["user"]).id))
      logger.debug "DEBUG(authorize) : session = <#{session[:user_id]} user = <#{User.find(params["id"] || params["user"]).to_yaml}>"
      flash[:notice] = t("permission_denied", :scope => %w(notice)) unless same_user
      flash[:notice] = t("please_log_in", :scope => %w(notice)) if same_user
      # save the URL the user requested so we can hop back to it
      # after login
      redirect_to(openid_path)
    end
  end

  def set_jumpto
    session[:jumpto] = request.parameters
  end
  
  def set_user
    @user = User.find(params[:user])
  end

  def local_request?
    false
  end
  
  def rescue_action_in_public(exception)
    case exception
    when ::ActionController::RoutingError, ::ActionController::UnknownAction, ::ActiveRecord::RecordNotFound
      render :file=>"#{RAILS_ROOT}/public/404.html", :status=>'404 Not Found'
    else
      render :file=>"#{RAILS_ROOT}/public/500.html", :status=>'500 Error'
    end
  end
end
