class Child < ApplicationRecord
  has_many :course_teacher
  has_many :teachers, through: :course_teacher
  has_one :direction
end
