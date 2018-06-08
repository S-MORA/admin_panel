class CohortStudentsController < ApplicationController
  def index
    @cohort_students = CohortStudent.all
  end
  def new
    @cohorts = Cohort.all
    @students = Student.all
    @cohort_student = CohortStudent.new
  end
  def show
    @cohort_student = CohortStudent.find(params[:id])
  end
  def create

    CohortStudent.create(cohort_student_params)
    redirect_to cohort_students_path
  end
  def edit
    @cohort_student = CohortStudent.find(params[:id])
  end
  def update
    cohort_student = CohortStudent.find(params[:id])
    cohort_student.update(cohort_student_params)
    redirect_to cohort_students_path
  end
  def destroy
    CohortStudent.destroy(params[:id])
    redirect_to cohort_students_path
  end
private
  def cohort_student_params
    params.require(:cohort_student).permit(:cohort_id, :student_id)
  end

end
