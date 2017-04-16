class Attendance < ApplicationRecord
	has_many :employees
	has_many :salaries, through: :employees
end
