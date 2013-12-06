class WelcomeMailer < ActionMailer::Base
  default from: "from@example.com"

  def welcome_student student
  	@student = student
  	mail to: @student.email, subject: "Welcome to the App!"
  end
end
