class Salary < ApplicationRecord
	has_many :employees
	has_many :attendances, through: :employees

end
