class MainController < ApplicationController
  def index
  end

  def show
    session[:username] = params['name']
  end

end
