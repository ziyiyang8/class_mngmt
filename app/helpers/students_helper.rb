module StudentsHelper

	def display_bio(student)
		truncate(student.bio, length: 12)
	end
end	
