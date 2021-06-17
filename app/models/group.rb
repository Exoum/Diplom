class Group < ApplicationRecord
  has_many :group_records
  has_one :course_teacher
end
