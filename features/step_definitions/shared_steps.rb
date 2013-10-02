Given /^I am a logged in user$/ do
  sign_up_new_user(valid_user)
end

Given /^I visit the "([^"]*)" page$/ do |page_name|
  visit path_to(page_name)
end
