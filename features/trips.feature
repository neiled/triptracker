Feature: Creating a new trip
  As a new user to the site
  In order to track my trip and show friends
  I should be able to create a new trip
  
  Scenario: New user should see ability to create first trip
    Given I am on the homepage
    Then I should see "Where are you starting?"
    And I should see "What is your email?"
    When I fill in "What is your email?" with "test@example.com"
    And I fill in "Where are you starting?" with "London"
    And I fill in "When do you leave?" with "02/02/2011"
    And I press "Create User"
    Then I should see "London"
    And I should have 1 trip
    And I should have 1 location
    And I should have 1 user
