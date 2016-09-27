class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   protected
 def authorize
 	unless User1.find_by(id: session[:user_id])
 		redirect_to login_url, alert: "You thought you could gain unauthorised access? LOL"
 	end
 end
end
