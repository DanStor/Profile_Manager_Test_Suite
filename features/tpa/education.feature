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
    Then I should be able to see an eduction was created

  @education
  @education_add_to_profile
  @education_requires_created
  Scenario: I should be able to add education to my profile
    Given I go to the profiles page
    When I click on edit a profile
    And I check the education box
    And I click on save
    Then I should be able to see the education on my profile

  @education
  @education_edit
  @education_requires_created
  Scenario: I should be able to edit education
    Given I am on the education page
    When I click on the name or the edit button
    And I click on save
    Then I should be able to see an eduction was updated

  @education
  @education_requires_created
  Scenario: I should be able to cancel a delete of an education
    Given I am on the education page
    When I click on destroy
    And I click cancel
    Then the education should not be removed

  @education
  @education_destroy
  @education_requires_created
  Scenario: I should be able to delete an education
    Given I am on the education page
    When I click on destroy
    And I click confirm
    Then the education should be removed
    And a confirmation message should appear

  @education
  @education_error
  Scenario: I should get an error
    Given I am on the education page
    When I click on add education
    And I do not enter any details
    And I click on save
    Then I should get 12 errors

  @education
  @education_end_date
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

  @education
  @education_before_start
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
  @education_char_count
  Scenario: The remaining characters should change
    Given I am on the education page
    When I click on add education
    And I fill in the institution
    Then the remaining characters should reduce

  @education
  @education_backspace
  Scenario: The remaining characters should change
    Given I am on the education page
    When I click on add education
    And I fill in the institution
    And I press the backspace
    Then the remaining characters should increase

  @education
  @education_word_count
  Scenario: The remaining words should change
    Given I am on the education page
    When I click on add education
    And I fill in the description
    Then the remaining words should reduce
