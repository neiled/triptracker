Then /^I should have (\d+) trip$/ do |arg1|
  assert_equal arg1.to_i, Trip.count
end

Then /^I should have (\d+) location$/ do |arg1|
  assert_equal arg1.to_i, Location.count
end

Then /^I should have (\d+) user$/ do |arg1|
  assert_equal arg1.to_i, User.count
end

