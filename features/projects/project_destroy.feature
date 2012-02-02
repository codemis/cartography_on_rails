Feature: Deleting a Project
	In order to delete a project
	As a logged in user
	I want to delete one of my projects

	Background:
		Given I am a logged in user
		And I have a project titled "Cartography on Rails"

	Scenario: I should be able to delete my project
		Given I am on the "My Projects" page
		When I click the "delete" link for "Cartography on Rails"
		Then The Project "Cartography on Rails" should be deleted
		And I should see a project deleted message
