Feature: Code-breaker submits a guess

  Codebreaker submits a guess of four numbers. The game marks the guess with + and - signs.

  For each number in the guess that matches the number and position of a number in the secret code, the mark includes one +.
  For each number in the guess that matches the number but not the position of a number in the secret code, a - is added to the mark.

  Scenario Outline: Code-breaker submits a guess
    Given the secret code is "<code>"
    When I guess "<guess>"
    Then the mark should be "<mark>"

    Scenarios: No matches
      | code | guess | mark |
      | 1234 | 5555  |      |

    Scenarios: 1 number correct
      | code | guess | mark |
      | 1234 | 1555  | +    |
      | 1234 | 2555  | -    |

    Scenarios: 2 numbers correct
      | code | guess | mark |
      | 1234 | 1255  | ++   |
      | 1234 | 1525  | +-   |
      | 1234 | 4355  | --   |

    Scenarios: 3 numbers correct
      | code | guess | mark |
      | 1234 | 1235  | +++  |
      | 1234 | 5134  | ++-  |
      | 1234 | 5124  | +--  |
      | 1234 | 4325  | ---  |

    Scenarios: All numbers correct
      | code | guess | mark |
      | 1234 | 1234  | ++++ |
      | 1234 | 1243  | ++-- |
      | 1234 | 1423  | +--- |
      | 1234 | 4321  | ---- |
