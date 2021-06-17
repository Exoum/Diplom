class CourseTeacher < ApplicationRecord
  belongs_to :teacher, foreign_key: true
  belongs_to :course, foreign_key: true
  belongs_to :group, foreign_key: true
end
