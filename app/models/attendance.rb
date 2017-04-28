class Attendance < ApplicationRecord
	belongs_to :employees
	has_many :salaries, through: :employees
end
