Feature: First screen

Scenario: On first screen
    Given I launch the app
    Then I should see a "Enter" button
    
Scenario: Go to second screen
    When I touch the button marked "Enter"
    Then I should see "tableView"