class CucumberGreeter
  def greet
    "Hello Cucumber!"
  end
end

Given /^a greeter$/ do
  @greeter = CucumberGreeter.new
end

When /^I send it a greet message$/ do
  @greeting = @greeter.greet
end

Then /^I should see "([^"]*)"$/ do |message|
  @greeting.should == message
end

