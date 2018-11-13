Feature: Projects

  Scenario: I should be able to add a project
    Given I am on the projects page
    When I click on add project
    And I input a title
    And I input a description
    And I select a start date
    And I select an end date
    And I click save
    Then a project should be created

  Scenario: I should get errors if I dont enter details
    Given I am on the projects page
    When I click on add project
    And I click save
    Then I should be displayed with 10 errors

  Scenario: I can add a project to my profile
    Given I am on the profiles page
    When I click on edit
    And I check the project box
    And I click save
    Then I should be able to see the project on my profile
