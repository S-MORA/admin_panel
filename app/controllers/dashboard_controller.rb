class DashboardController < ApplicationController
    def home
      @students = Student.all
      @instructors = Instructor.all
    end
end
