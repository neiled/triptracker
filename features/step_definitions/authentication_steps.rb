Given /^I am a logged in authenticated user$/ do
    Given %{I am on the homepage}
    When %{I fill in "What is your email?" with "test@example.com"}
    And %{I fill in "Password?" with "password"}
    And %{I fill in "Password again?" with "password"}
    And %{I fill in "Where are you starting?" with "London"}
    And %{I fill in "When do you leave?" with "02/02/2011"}
    And %{I press "Create User"}
end

