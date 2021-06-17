class GroupRecord < ApplicationRecord
  belongs_to :child, foreign_key: true
  belongs_to :group, foreign_key: true
  belongs_to :payment, foreign_key: true
end
