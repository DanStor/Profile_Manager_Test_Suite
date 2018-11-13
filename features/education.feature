Feature: Education

  @education
  Scenario: I should be able to add an education
    Given I am on the education page
    When I click on add education
    And I fill in the institution
    And I fill in the course
    And I choose a start date
    And I choose an end date
    And I fill in the description
    And I click save
    Then I should be able to see an eduction

  @education
  Scenario: I should be able to add education to my profile
    Given I am on the profiles page
    When I click on edit
    And I check the education box
    And I click save
    Then I should be able to see the education on my profile

  @education
  Scenario: I should be able to edit education
    Given I am on the education page
    When I click on the name of the institution
    And I fill in the institution
    And I fill in the course
    And I choose a start date
    And I choose an end date
    And I fill in the description
    And I click save
    Then I should be able to see my education on my profile

  @education
  Scenario: I should be able to delete an education
    Given I am on the education page
    When I click on destroy
    And I click save
    Then the education should be removed
    And a confirmation message should appear

  @education
  Scenario: I should get an error
    Given I am on the education page
    When I click on add education
    And I do not enter any details
    And I click save
    Then I should get 12 errors

  @education
  Scenario: I shouldnt be able to enter an end date after the current day
    Given I am on the education page
    When I click on add education
    And I fill in the institution
    And I fill in the course
    And I choose a start date
    And I choose an end date after the current day
    And I fill in the description
    And I click save
    Then I should get an error

  @education
  Scenario: The remaining characters should change
    Given I am on the education page
    When I click on add education
    And I fill in the institution
    Then the remaining characters should reduce
