class Employee < ApplicationRecord
  belongs_to :division
  belongs_to :project, optional: true
  validates :employee_name,:division_id, presence: true
end
