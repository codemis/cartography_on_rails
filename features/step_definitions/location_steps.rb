When /^I add a location correctly$/ do
  create_new_location(valid_location)
end

Then /^I should see a successful location added message$/ do
  page.should have_content "location has been added"
end

Then /^I should see the location on the index page$/ do
  visit '/locations'
  page.should have_content valid_location[:name]
end

When /^I add a location incorrectly$/ do
  location = valid_location.merge(:name => "")
  create_new_location(location)
end

Then /^I should see a failure location added message$/ do
  within('#flash_error') do
    page.should have_content("Required fields can't be blank")
  end
end
