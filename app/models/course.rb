class Course < ActiveRecord::Base
	has_many :course_registrations, dependent: :destroy
	has_many :students, through: :course_registrations
end
