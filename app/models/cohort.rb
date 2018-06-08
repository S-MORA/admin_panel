class Cohort < ApplicationRecord
  has_many :cohort_students
  has_many :students, :through => :cohort_students
  belongs_to :instructor
  belongs_to :course
end
