Feature: Second screen

Background:
    Given I launch the app
    And I touch the button marked "Enter"    

Scenario: Add table cell
    When I use the keyboard to fill in the textfield marked "textField" with "maya"
    And I touch the button marked "+"
    Then I should see "maya"