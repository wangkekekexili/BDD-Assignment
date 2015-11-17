Feature: Acceptance Test for the
  volume() function of Calculator
 
  Scenario: Calculate the volume of a rectangular prism with length 10 width 20 height 30 on our calculator
    Given I am using the calculator
    When I input volume with length "10" width "20" height "30"
    Then I should see "6000"

 
  Scenario Outline: Calculate the volume of a rectangular prism on our calculator
    Given I am using the calculator
    When I input volume with length "<input1>" width "<input2>" height "<input3>"
    Then I should see "<output>"

  Examples:
    | input1 | input2 | input3 | output |
    | -1     | 2      | 3      | None   |
    | 1      | 1      | 1      | 1      |
    | 10     | 5      | 3      | 150    |
    | 3      | 6      | 2      | 36     |
