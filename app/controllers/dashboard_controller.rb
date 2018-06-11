class DashboardController < ApplicationController
    def home
      @students = Student.all
      @instructors = Instructor.all
      @courses = Course.all
    end
end
