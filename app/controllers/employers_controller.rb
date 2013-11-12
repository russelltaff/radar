class EmployersController < ApplicationController  
before_action :authenticated!, :set_employer, :authorized!, except: [:new, :create]

  def show 
    render :show
  end 

  def edit 
    render :edit 
  end 

  def update
    if @employer.update_attributes(employer_params)
      redirect_to employer_path(@employer)
    else
      render :edit
    end
  end 

  private

  # security ########
  def employer_params
    params.require(:employer).permit(:email, :name, :type, :password, :password_confirmation, :city, :state, :phone, :summary, :company_url, :apprentice_partner, :photo)
  end

  def set_employer 
    @employer = Employer.find(params[:id])
  end

  def authorized!
    unless @employer.id == session[:user_id]
      redirect_to user_path(session[:user_id])
    end
  end


end 