Feature: Skills

  Scenario: I should be able to add a skill
    Given I am on the skills page
    When I click on create skill
    And I enter a skill
    And I press save
    Then a skill should be created

  Scenario: I should be able to add a skill to my profile
    Given I have created a skill
    And I have a profile
    And I am on the profiles page
    When I edit my profile
    And check the skill box
    Then the skill should be added to my profile

    
