class Employee < User
	belongs_to :salary
	has_many :attendance
end
