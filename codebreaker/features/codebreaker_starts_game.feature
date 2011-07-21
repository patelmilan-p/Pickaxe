Feature: Code-breaker starts game
  As a codebreaker
  I want to start the game
  So that i can break the code

  Scenario: Start a game
    Given I am not yet playing
    When I start a new game
    Then I should see "Welcome to Codebreaker!"
    And I should see "Enter a Guess:"
