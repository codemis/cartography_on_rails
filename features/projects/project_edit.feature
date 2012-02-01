Feature: Editing a Project
	In order to edit my project
		As a logged in user
		I want to edit my projects
		
	Background:
		Given I am a logged in user
		And I have a project titled "My Church Map"
		And I have a project titled "My People Group Map"
		
	Scenario: I should be able to edit my project
		Given I am on the "My Projects" page
		When I click the "edit" link for "My Church Map"
		Then I should be on the project edit page for "My Church Map"
		When I edit the projects title to "My Favorite Project" for "My Church Map" correctly
		Then I should see a successful project edit message
		And see that the title has been edited to "My Favorite Project" for "My Church Map"
		
	Scenario: I should not be able to edit my project if I do not fill in required info
		Given I am on the "My Projects" page
		When I click the "edit" link for "My Church Map"
		Then I should be on the project edit page for "My Church Map"
		When I edit the projects details for "My Church Map" incorrectly
		Then I should see a failed project edit message