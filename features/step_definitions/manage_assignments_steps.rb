Given(/^I am on the home page$/) do
	visit "/"
end

Then(/^I [sS]hould see "(.*?)"$/) do |arg1|
	page.should have_content arg1
end

When(/^I (follow|press) "(.*?)"$/) do |click_type, arg1|
	click_link_or_button arg1
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |arg1, arg2|
	fill_in arg1, with: arg2
end

Then(/^I [sS]hould be on the home page$/) do
  current_path.should eq '/'
end

Given(/^I have an "(.*?)" with a "(.*?)" of "(.*?)"$/) do |thing, attr_key, attr_value|
	thing.constantize.create attr_key.to_s => attr_value
	#Assignment.create(title: arg1)
end

When(/^I check "(.*?)"$/) do |arg1|
	check arg1
end