module CohortsHelper
  def find_cohort_student(student, cohort)
    CohortStudent.find_by(student: student, cohort: cohort)
  end
end
