Feature: I am able to log into my account as an existing user
@login
Scenario Outline: As an existing user I can sign in
	Given I can access the homepage
	And I then click sign in
	When I enter an email <email address>
	And I input a password <password>
	And click on sign in
	Then I should be logged in

	Examples:
	|email address|password|
	|stephaa@test.com|password|
	|Fake@testing.co.uk|password|