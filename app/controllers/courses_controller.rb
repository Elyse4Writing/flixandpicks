class CoursesController < ApplicationController
  before_action :authenticate_user!
  
    def index
        @courses = Course.all
    end
    
    def show
        @course = Course.find(params[:id])
    end
    
    def method
      require_authorized_for_current_course
    end
end
