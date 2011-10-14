class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def index
  end

  def create
    # Can't simply create the two models in one step as they're optional
    @company = Company.new(params[:company])
    if @company.save
      @user = User.new(params[:user])
      # Manually associate the optional company
      @user.companyId = @company.id
      @user.roles = [User::ROLE_COMPANY_ADMIN].to_s
      if @user.save
        redirect_to root_url, :notice => "Signed up!"
      else
        render :new_company_admin
      end
    else
      render :new_company_admin
    end
  end

  def destroy
  end

end
