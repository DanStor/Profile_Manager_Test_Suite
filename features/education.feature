Feature: Education

  Scenario: I should be able to add an education
    Given I am on the education page
    When I click on add education
    And I fill in the institution
    And I fill in the course
    And I choose a start date
    And I choose an end date
    And I fill in the description
    And I click save
    Then I should be able to see my education on my profile

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

  Scenario: I should be able to delete an education
    Given I am on the education page
    When I click on destroy
    And I click save
    Then the education should be removed
    And a confirmation message should appear

  Scenario: I should get an error
    Given I am on the education page
    When I click on add education
    And I do not enter any details
    And I click save
    Then I should get 11 errors

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

  Scenario: The remaining characters should change
    Given I am on the education page
    When I click on add education
    And I fill in the institution
    Then the remaining characters should reduce
