Then /^I should have (\d+) trip$/ do |arg1|
  assert_equal arg1.to_i, Trip.count
end

Then /^I should have (\d+) locations?$/ do |arg1|
  assert_equal arg1.to_i, Location.count
end

Then /^I should have (\d+) user$/ do |arg1|
  assert_equal arg1.to_i, User.count
end

Given /^a transport exists called "([^"]*)"$/ do |arg1|
  Transport.create(:name => arg1)
end



Then /^I should see the car icon$/ do
 page.has_xpath?("//img[@src='/images/Car.png']")
end


