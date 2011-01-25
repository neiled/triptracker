Feature: Creating a new trip
  As a new user to the site
  In order to track my trip and show friends
  I should be able to create a new trip
  
  Scenario: New user should see ability to create first trip
    Given I am on the homepage
    Then I should see "Where are you starting?"
    And I should see "What is your email?"
