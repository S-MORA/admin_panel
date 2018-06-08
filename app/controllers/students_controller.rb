class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def new
    @student = Student.new
  end
  def show
    @student = Student.find(params[:id])
  end
  def create
    Student.create(student_params)
    redirect_to students_path
  end
  def edit
    @student = Student.find(params[:id])
  end
  def update
    student = Student.find(params[:id])
    student.update(student_params)
    redirect_to students_path
  end
  def destroy
    Student.destroy(params[:id])
    redirect_to students_path
  end
private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :dob, :education)
  end
end
