Then /^package "([^\"]*)" should be "([^\"]*)"$/ do  |package, state|
  steps %Q{
    Then there should be a resource "Package[#{package}]"
    And the state should be "#{state}"
  }
end


Then /^package "([^\"]*)" should not be installed$/ do  |package|
  steps %Q{
    Then there should be no resource "Package[#{package}]"
  }
end
