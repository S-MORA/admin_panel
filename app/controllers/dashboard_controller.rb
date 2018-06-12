class DashboardController < ApplicationController
    def home
      @students = Student.all
      @instructors = Instructor.all
      @courses = Course.all
      cohorts = Cohort.all
      @newest_cohorts = cohorts.reverse
    end
end
