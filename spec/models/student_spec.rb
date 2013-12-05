require 'spec_helper'

describe Student do
  
  before :each do
  	@student = Student.new
  end

  it "should have email" do
  	@student.should_not be_valid
  end

  it "should only allow valid email addresses" do
  	@student.email = "GobblyGook"
  	@student.valid?
  	@student.errors.full_messages.should include 'Email format is bad'
  end

end
