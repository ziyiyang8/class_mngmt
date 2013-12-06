require 'spec_helper'

describe "assignments/show" do
  before(:each) do
    @assignment = assign(:assignment, stub_model(Assignment,
      :title => "Title",
      :details => "MyText",
      :done => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/false/)
  end
end
