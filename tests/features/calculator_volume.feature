Feature: Acceptance Test for the volume() function of Calculator
 
  Background:
    Given I am using the calculator
 
  Scenario: Calculate the volume with 1 and 2 and 3 on our calculator
    Given I input the volume with "1" and "2" and "3"
    Then I should see "6"

  Scenario: Calculate the volume with 100 and 100 and 0 on our calculator
    Given I input the volume with "100" and "100" and "0"
    Then I should see "0"

  Scenario: Calculate the volume with 2 and 2 and 2 on our calculator
    Given I input the volume with "2" and "2" and "2"
    Then I should see "8"
	
  Scenario Outline: Calculate the volume with three numbers on our calculator
    Given I input the volume with "<input1>" and "<input2>" and "<input3>"
    Then I should see "<output>"

  Examples:
    | input1 | input2 | input3 | output |
    | 1      | 1      | 2      | 2      |
    | 2      | 3      | 5      | 30     |
    | 4      | 4      | 4      | 64     |
