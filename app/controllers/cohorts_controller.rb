class CohortsController < ApplicationController
  before_action :authenticate_user!

  def new
    @courses = Course.all
    @instructors = Instructor.all
    @cohort = Cohort.new
  end
  def show
    @cohort = Cohort.find(params[:id])
  end
  def create
    @instructors = Instructor.all
    @courses = Course.all
    Cohort.create(cohort_params)
    redirect_to course_path(cohort_params[:course_id])
  end
  def edit
    @cohort = Cohort.find(params[:id])
    @instructors = Instructor.all
    @courses = Course.all
  end
  def update
    cohort = Cohort.find(params[:id])
    cohort.update(cohort_params)
    redirect_to cohorts_path
  end
  def destroy
    Cohort.destroy(params[:id])
    redirect_to cohorts_path
  end
private
  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :instructor_id, :course_id)
  end
end
