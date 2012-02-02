Feature: Adding a Project
	In order to add my project
		As a logged in user
		I want to add a project
		
	Background:
		Given I am a logged in user
	
	Scenario: Should be able to add a project
		Given I visit the "Add a Project" page
		When I add a project correctly
		Then I should see a successful project added message
		And I should see the project on the index page
		
	Scenario: Should not be able to add a project if I do not add all the required field
		Given I visit the "Add a Project" page
		When I add a project incorrectly
		Then I should see a failure project added message
