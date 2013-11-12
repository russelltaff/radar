class StudentsController < ApplicationController  
before_action :authenticated!, :set_student, :authorized!, except: [:new, :create]
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


end 