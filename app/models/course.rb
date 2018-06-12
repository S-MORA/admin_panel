class Course < ApplicationRecord
  has_many :cohorts, dependent: :destroy
end
