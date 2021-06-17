class Course < ApplicationRecord
  has_many :course_teacher
  has_many :teachers, through: :course_teacher
  belongs_to :direction, optional: true
end
