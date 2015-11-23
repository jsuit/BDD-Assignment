Feature: Acceptance Test for the
  factorial() function of Calculator
 
  Background:
    Given I am using the calculator
 
  Scenario: Calculate the factorical 4 on our calculator
    Given I input "4" 
    Then I should see "24"

  Scenario: Calculate the factorical 6 on our calculator
    Given I input "7"
    Then I should see "5040"

   Scenario: Calculate the factorical 0 on our calculator
    Given I input "0"
    Then I should see "1"	
 
  Scenario Outline: Calculate the factorical on our calculator
    Given I input "<input1>"
    Then I should see "<output>"

  Examples:
    | input1 | output |
    | 0      | 1      |
    | 6      | 720    |
    | 5      | 120    |
