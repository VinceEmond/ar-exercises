class Employee < ActiveRecord::Base
  belongs_to :store

  # Employees must always have a first name present
  # validates :first_name, presence: true
  validates_presence_of :first_name
  
  # Employees must always have a last name present
  # validates :last_name, presence: true
  validates_presence_of :last_name
  
  # Employees have a hourly_rate that is a number (integer) between 40 and 200
  # validates :store, presence: true
  validates_presence_of :store
  
  # Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
  # validates :hourly_rate, :inclusion => { :in => 40..200 }
  validates_inclusion_of :hourly_rate, :in => 40..200


end
