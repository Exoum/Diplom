class CoursesController < ApplicationController

  def index
    @course = Course.all
  end

  def show
    @course = Course.find(:params[:id])
  end

  def new
    @direction = Direction.all
  end

  def create
    @course = Course.new(course_params)
    @course.save
    # redirect_to @course
  end

  def destroy

  end

  private def course_params
    params.require(:course).permit(:title, :description, :age, :photo, :sessions, :people_in_group, :direction_id)
  end

end
