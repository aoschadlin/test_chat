class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :loginRedirect, :except => [:new, :create, :destroy]

  def loginRedirect
    # Secondary filter that I couldn't put into the before_filter clause
    unless request.fullpath == '/'
      if not current_user
        redirect_to '/login'
      end
    end
  end
end
