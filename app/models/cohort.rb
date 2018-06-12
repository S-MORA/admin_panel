class Cohort < ApplicationRecord
  has_many :cohort_students, dependent: :destroy
  has_many :students, :through => :cohort_students
  belongs_to :instructor
  belongs_to :course
end
