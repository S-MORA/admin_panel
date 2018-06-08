class Cohort < ApplicationRecord
  has_one :courses
  has_one :instructor
  has_many :cohort_students
  has_many :students, through: :cohort_students
  belongs_to :instructor
  belongs_to :course
end
