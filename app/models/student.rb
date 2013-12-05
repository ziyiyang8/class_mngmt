class Student < ActiveRecord::Base
	has_many :course_registrations, dependent: :destroy
	has_many :courses, through: :course_registrations
end
