Feature: Acceptance Test for the
  factorial() function of Calculator
 
  Scenario: Calculate factorial 5 on our calculator
    Given I am using the calculator
    When I input factorial "5"
    Then I should see "120"

 
  Scenario Outline: Calculate the factorial of a number on our calculator
    Given I am using the calculator
    When I input factorial "<input>"
    Then I should see "<output>"

  Examples:
    | input | output |
    | -1    | None   |
    | 0     | 1      |
    | 1     | 1      |
    | 3     | 6      |
