Feature: Array Sum

  Scenario: Calculate sum of an array
    Given an array of 8 numbers
      | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 |
    When calculating the sum
      | sum = 0 |
      | foreach number in array |
      | sum += number |
      | end |
    Then the sum should be 36
