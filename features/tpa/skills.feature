Feature: Skills

  @skills1
  @skills2
  @skills4
  @skills5
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
    And I am on the profiles page for skill
    When I edit my profile
    And check the skill box
    Then the skill should be added to my profile

  @skills3
  Scenario: I should get an error when I dont enter a skill
    Given I am on the skills page
    When I click on create a skill
    And I dont enter a skill
    And I press save skill
    Then the error should be displayed

  @skills4
  Scenario: I am able to edit a skill
    Given I am on the skills page
    When I click the edit link
    And edit some input details
    And I press save skill
    Then the skill is edited

  @skills5
  Scenario: I am able to delete a skill
    Given I am on the skills page
    When I click delete
    And confirm delete
    Then the skill is deleted
