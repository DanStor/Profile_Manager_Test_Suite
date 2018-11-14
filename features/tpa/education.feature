Feature: Education

  @education
  @education_add
  Scenario: I should be able to add an education
    Given I am on the education page
    When I click on add education
    And I fill in the institution
    And I fill in the course
    And I choose a start date
    And I choose an end date
    And I fill in the description
    And I click on save
    Then I should be able to see an eduction

  @education
  Scenario: I should be able to add education to my profile
    Given I am on the profiles page
    When I click on edit
    And I check the education box
    And I click on save
    Then I should be able to see the education on my profile

  @education
  Scenario: I should be able to edit education
    Given I am on the education page
    When I click on the name or the edit button
    And I fill in the institution
    And I fill in the course
    And I choose a start date
    And I choose an end date
    And I fill in the description
    And I click on save
    Then I should be able to see my education on my profile

  @education
  Scenario: I should be able to delete an education
    Given I am on the education page
    When I click on destroy
    And I click confirm
    Then the education should be removed
    And a confirmation message should appear

  @education
  Scenario: I should be able to cancel a delete of an education
    Given I am on the education page
    When I click on destroy
    And I click cancel
    Then the education should not be removed
    And I should still be able to see the education

  @education
  Scenario: I should get an error
    Given I am on the education page
    When I click on add education
    And I do not enter any details
    And I click on save
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
    And I click on save
    Then I should get an error about the end date

  Scenario: I shouldnt be able to enter an end date before the start date
    Given I am on the education page
    When I click on add education
    And I fill in the institution
    And I fill in the course
    And I choose a start date
    And I choose an end date before the start date
    And I fill in the description
    And I click on save
    Then I should get an errors about the start and end dates

  @education
  Scenario: The remaining characters should change
    Given I am on the education page
    When I click on add education
    And I fill in the institution
    Then the remaining characters should reduce

  Scenario: The remaining words should change
    Given I am on the education page
    When I click on add education
    And I fill in the description
    Then the remaining words should reduce
