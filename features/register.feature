Feature: I am able to sign up and register

Scenario: As a user I can create an account
	Given I can access the homepage
	And I then click sign in
	When I input an email address
	And click on create an account
	And input all necessary registration details
	And once I click create account
	Then I should be logged in

	
 
