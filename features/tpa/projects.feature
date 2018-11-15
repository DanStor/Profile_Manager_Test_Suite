Feature: Projects

  @projects1
  Scenario: I should be able to add a project
    Given I am on the projects pages
    When I click on add project
    And I input a title
    And I input a description
    And I select a start date
    And I select an end date
    And I clicked save
    Then a project should be created

@projects2
  Scenario: I should get errors if I dont enter details
    Given I am on the projects pages
    When I click on add project
    And I clicked save
    Then I should be displayed with 10 errors

@projects3
  Scenario: I can add a project to my profile
    Given I am on the profiles pages
    When I click on edit
    And I check the project box
    And I clicked save
    Then I should be able to see the project on my profile

@projects4
  Scenario: I input invalid dates into projects
    Given I am on the projects pages
    When I click on add project
    And I input a title
    And I input a description
    And I select an invalid start date
    And I select an invalid end date
    And I clicked save
    Then I should be presented with an error

  @projects5
    Scenario: I can edit a project
    Given I am on the projects pages
    When I click edit
    And I edit some details
    Then the project should be edited

  @projects6
    Scenario: I can destroy a project
    Given I am on the projects pages
    When I click destroy
    And I click confirm
    Then the project should be destroyed
