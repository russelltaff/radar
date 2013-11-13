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
    stuff = find_by_many(searched_positions(params))
    binding.pry

    # params
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
    results = []
    user_input.each {|type, checked| results << type if checked == "1"}
    results
  end

  def find_by_one(position_type)
    Post.all.select do |post|
      post == position_type
    end
  end

  def find_by_many(*user_input)
    result = []
    user_input.each do |input|
      find_by_one(input).each {|post| result << post}
    end
    result
  end

end 