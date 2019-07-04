class Project < ApplicationRecord
  has_many :employees, dependent: :destroy
end
