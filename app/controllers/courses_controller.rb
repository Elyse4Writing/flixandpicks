class CoursesController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_course, only: [:show]
  
    def index
        @courses = Course.all
    end
    
    def show
        @course = Course.find(params[:id])
    end
end
