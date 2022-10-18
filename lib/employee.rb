class Employee < ActiveRecord::Base
  belongs_to :store

  # Employees must always have a first name and last name present
  validates :first_name, :last_name, presence: {strict: true}

  # Employees have a hourly_rate that is a number (integer) between 40 and 200
  validates :hourly_rate, :inclusion => {:in => [40, 200]}, numericality: {only_integer: true}
  
  # Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
  validates :store_id, numericality: {only_integer: true}
end
