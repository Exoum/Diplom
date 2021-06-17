class Teacher < ApplicationRecord
  has_many :course_teacher
  has_many :courses, through: :course_teacher
end
