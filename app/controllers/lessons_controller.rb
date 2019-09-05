class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_course, only: [:show]

  def show
  end
    
    private
    def require_authorized_for_current_course
      if current_course.user != current_user
        render redirect_to "Sign in"
      end
    end
  
    helper_method :current_course
    def current_course
      @current_course ||= Course.find(params[:id])
    end
  
    def course_params
      params.require(:course).permit(:title, :description, :image, :cost)
    end

end