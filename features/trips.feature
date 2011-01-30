Feature: Creating a new trip
  As a new user to the site
  In order to track my trip and show friends
  I should be able to create a new trip
  
  Scenario: New user should see ability to create first trip
    Given I am on the homepage
    Then I should see "Where are you starting?"
    And I should see "What is your email?"
    When I fill in "What is your email?" with "test@example.com"
    And I fill in "Password?" with "password"
    And I fill in "Password again?" with "password"
    And I fill in "Where are you starting?" with "London"
    And I fill in "When do you leave?" with "02/02/2011"
    And I press "Create User"
    Then I should see "London"
    And I should have 1 trip
    And I should have 1 location
    And I should have 1 user

  Scenario: User should be able to add a new location
    Given I am a logged in authenticated user
    Then I should see "Where next?"
    When I follow "Where next?"
    And I fill in "Location name" with "Las Vegas"
    And I fill in "When do you arrive?" with "03/02/2011"
    And I press "Add"
    Then I should see "Las Vegas"
    And I should have 1 trip
    And I should have 2 locations
    And I should have 1 user
