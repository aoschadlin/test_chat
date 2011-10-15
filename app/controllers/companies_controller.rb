class CompaniesController < ApplicationController
  def new
    @company = Company.new
    @user = User.new
  end

  def index
    # admin feature for listing all companies that are registered
    @allCompanies = Company.all
  end

  def create
    # Can't simply create the two models in one step as the company is optional
    # and so not all users will have a company associated with them
    @company = Company.new(params[:company])
    if @company.save
      @user = User.new(params[:user])
      # Manually associate the optional company
      @user.companyId = @company.id
      if @user.save
        # ZZZ this should redirect to the company admin dashboard
        redirect_to root_url, :notice => "Signed up!"
      else
        redirect_to new_company_url, :notice => "Invalid user details"
      end
    else
      redirect_to new_company_url, :notice => "Invalid company details"
    end
  end

  def destroy
  end

end
