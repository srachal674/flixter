class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_lesson, only: [:show]

  def show
  end
    
    private
    def require_authorized_for_current_course
      if current_lesson.user != current_user
        render redirect_to current_lesson
      end
    end
  
    helper_method :current_lesson
    def current_lesson
      @current_lesson ||= Lesson.find(params[:id])
    end
  
    def lesson_params
      params.require(:course).permit(:title, :description, :image, :cost)
    end

end