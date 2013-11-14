module SessionsHelper
  def logged_in?
    session[:user_id].present?
  end

  def authenticated!
    unless logged_in?
      redirect_to new_session_path
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def student?
    current_user.type == "Student"
  end 
  
  def capitalize(string)
    result_array = string.split(" ")
    result_array.map! { |word| word.capitalize }
    result_array.join(" ")
  end
end