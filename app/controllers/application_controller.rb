class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :loginRedirect, :except => [:new, :create, :destroy]

  def loginRedirect
#    if not current_user
#      redirect_to '/login'
#    end
  end
end
