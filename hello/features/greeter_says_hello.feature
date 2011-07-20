Feature: greeter says hello

  In order to learn Rspec and Cucumber
  As a reader of the RSpec Book
  I need a greeter to say Hello

  Scenario: greeter says hello
    Given a greeter
    When I send it a greet message
    Then I should see "Hello Cucumber!"

