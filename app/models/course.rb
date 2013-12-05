class Course < ActiveRecord::Base
	has_many :course_registrations
	has_many :students, through: :course_registrations
end
