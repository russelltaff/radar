class StudentsController < ApplicationController  
before_action :authenticated!, :set_student, :authorized!, except: [:new, :create, :search]
#TODO students should be able to look at other students' profiles

  def show 
    render :show
  end 

  def edit 
    render :edit 
  end 

  def update
    if @student.update_attributes(student_params)
      redirect_to student_path(@student)
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
  def student_params
    params.require(:student).permit(:email, :name, :type, :password, :password_confirmation, :city, :state, :phone, :summary, :portfolio_url, :github_url, :resume, :photo)
  end

  def set_student 
    @student = Student.find(params[:id])
  end

  def authorized!
    unless @student.id == session[:user_id]
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