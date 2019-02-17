class LoginsController < ApplicationController
    def new
    end
  
    def create
      if user = authenticate_with_google
        cookies.signed[:user_id] = user.id
        redirect_to user
      else
        redirect_to new_session_url, alert: 'authentication_failed'
      end
    end
end