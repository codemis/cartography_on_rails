Feature: Adding a Location
	In order to add my location
	As a logged in user
	I want to add a location
		
	Background:
		Given I am a logged in user
	
	Scenario: Should be able to add a location
		Given I visit the "Add a Location" page
		When I add a location correctly
		Then I should see a successful location added message
		And I should see the location on the index page
		
	Scenario: Should not be able to add a location if I do not add all the required field
		Given I visit the "Add a Location" page
		When I add a location incorrectly
		Then I should see a failure location added message

