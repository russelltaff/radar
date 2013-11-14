class EmployersController < ApplicationController  
  before_action :authenticated!, :set_employer, :authorized!, except: [:new, :create, :search]
  #TODO employers should be able to look at other employers' profiles

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

  def search
    params_array = searched_positions(params)
    
    @selected_posts = find_by_many(params_array)
  
    render :search
  end

  private

  # security ########
  def employer_params
    params.require(:employer).permit(:email, :name, :type, :password, :password_confirmation, :city, :state, :phone, :summary, :company_url, :apprentice_partner, :photo, :company_type, :company_size)
  end

  def set_employer 
    @employer = Employer.find(params[:id])
  end

  def authorized!
    unless @employer.id == session[:user_id]
      redirect_to user_path(session[:user_id])
    end
  end
 
  def searched_positions(user_input)
    input = []
    user_input.each {|type, checked| input << type if checked == "1"}
    input
  end

  def find_by_many(*user_inputs)
    results = []
    user_inputs.each do |type|
      Post.where(position_type: type).each do |post|
        results << post
      end
    end
    results
  end

end 