class CohortStudentsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :verify_authenticity_token, only:[:destroy]
  def new
    @cohorts = Cohort.all
    @students = Student.all
    @cohort_student = CohortStudent.new
  end
  def create
    CohortStudent.create(cohort_student_params)
    redirect_to cohort_path(cohort_student_params[:cohort_id])
  end
  def update
    cohort_student = CohortStudent.find(params[:id])
    cohort_student.update(cohort_student_params)
    redirect_to cohort_path(cohort_student_params[:cohort_id])
  end
  def destroy
    cohort_student = CohortStudent.find(params[:id])
    cohort_student.destroy
    redirect_to cohort_student.cohort
  end
private
  def cohort_student_params
    params.require(:cohort_student).permit(:cohort_id, :student_id)
  end

end
