Given /^I am a logged user$/ do
  sign_in_user(valid_user)
end

Given /^I have a project titled "([^"]*)"$/ do |project_name|
 	project = valid_project.merge(:name => "#{project_name}")
	create_new_project(project)
end

Given /^I am on the "([^"]*)" page$/ do |page_name|
  visit path_to(page_name)
end

Given /^I visit the "([^"]*)" page$/ do |page_name|
  visit path_to(page_name)
end

When /^I add a project correctly$/ do
  create_new_project(valid_project)
end

Then /^I should see a successful project added message$/ do
  page.should have_content "project has been added"
end

Then /^I should see the project on the index page$/ do
  page.should have_content valid_project[:name]
end

When /^I add a project incorrectly$/ do
  project = valid_project.merge(:name => "")
	create_new_project(project)
end

Then /^I should see a failure project added message$/ do
  find(:xpath, "//li[@id='project_name_input']/p[@class='inline-errors']").should have_content("can't be blank")
end

When /^I click the "([^"]*)" link for "([^"]*)"$/ do |link_title, project_name|
  project = Project.first(:conditions => { :name => "#{project_name}"})
	find(:xpath, "//table/tbody/tr[@id='project_#{project.id}']/td[@class='actions']").click_link("#{link_title}")
end

Then /^I should be on the project edit page for "([^"]*)"$/ do |project_name|
	project = Project.first(:conditions => {:name => "#{project_name}"})
	current_url.should == edit_project_url(project)
end

When /^I edit the projects title to "([^"]*)" for "([^"]*)" correctly$/ do |new_project_name, project_name|
  project = Project.first(:conditions => { :name => "#{project_name}"})
	project.name = new_project_name
	edit_current_project(project)
end

Then /^see that the title has been edited to "([^"]*)" for "([^"]*)"$/ do |new_project_name, project_name|
	page.should have_content "#{new_project_name}"
end

Then /^I should see a successful project edit message$/ do
  page.should have_content "project has been updated"
end

When /^I edit the projects details for "([^"]*)" incorrectly$/ do |project_name|
  project = Project.first(:conditions => { :name => "#{project_name}"})
	project.name = ""
	edit_current_project(project)
end

Then /^I should see a failed project edit message$/ do
  find(:xpath, "//li[@id='project_name_input']/p[@class='inline-errors']").should have_content("can't be blank")
end

Then /^I should see the project titled "([^"]*)"$/ do |project_name|
  page.should have_content "#{project_name}"
end

Then /^I should be on the project details page for "([^"]*)"$/ do |project_name|
  project = Project.first(:conditions => {:name => "#{project_name}"})
	current_url.should == project_url(project)
end

Then /^I should see the details for the "([^"]*)"$/ do |project_name|
  project = Project.first(:conditions => {:name => "#{project_name}"})
	page.should have_content "#{project.name}"
	page.should have_content "#{project.pp_map_type}"
	page.should have_content "#{project.api_key}"
end