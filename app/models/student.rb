class Student < ActiveRecord::Base
	has_many :course_registrations, dependent: :destroy
	has_many :courses, through: :course_registrations

	validates :email, presence: true,
					  format: { with: /\w+@\w+\.\w+/ ,
					  	message: 'format is bad' }

	before_create :set_defaults

	scope :ziyi, -> { where(full_name: 'Ziyi') }

	private

	def set_defaults
		self[:title] = "Student" if title.blank?
	end

end
