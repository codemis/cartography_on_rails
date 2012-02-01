Feature: Viewing Projects
	In order to view my project or projects
		As a logged in user
		I want to view my projects
		
	Background:
		Given I am a logged in user
		And I have a project titled "My Church Map"
		And I have a project titled "My People Group Map"
		
	Scenario: I should see both projects on the My Projects page
		Given I am on the "home" page
		When I visit the "My Projects" page
		Then I should see the project titled "My Church Map"
		And I should see the project titled "My People Group Map"
		
	Scenario: I should see a single projects details
		Given I am on the "My Projects" page
		When I click the "view" link for "My Church Map"
		Then I should be on the project details page for "My Church Map"
		And I should see the details for the "My Church Map"