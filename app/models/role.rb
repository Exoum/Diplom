class Role < ApplicationRecord
  has_many :teachers
  has_many :parents
end
