Feature: Skills

  @skills1
  Scenario: I should be able to add a skill
    Given I am on the skills page
    When I click on create skill
    And I enter a skill
    And I press save skill
    Then a skill should be created

  @skills2
  Scenario: I should be able to add a skill to my profile
    Given I have created a skill
    And I have a profile
    And I am on the profiles page
    When I edit my profile
    And check the skill box
    Then the skill should be added to my profile

  @skills3
  Scenario: I should get an error when I dont enter a skill
    Given I am on the skills page
    When I click on create skill
    And I dont enter a skill
    And I press save
    Then the error should be displayed
