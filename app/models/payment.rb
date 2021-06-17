class Payment < ApplicationRecord
  has_many :group_records
  has_one :status
end
