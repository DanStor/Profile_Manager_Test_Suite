Feature: Profiles

  Scenario: I should be able to add a new profile
    Given: I am logged in as a Trainee or Admin
    And have a profile set up
    When I am on the Sparta profile
    And I click on new profile
    And I enter a summary
    And I select a stream
    And I enter a degree of more than 5 characters
    And I click save
    Then a profile should be created

  Scenario: I should be able to edit a profile
    Given: I am logged in as a Trainee or Admin
    And have a profile set up
    When I am on the Sparta profile
    And: I click the edit button on a selected profile
    And I enter a summary
    And I select a stream
    And I enter a degree of more than 5 characters
    And I click save
    Then a profile should be updated

  Scenario: I should be able to view as a pdf
    Given: I am logged in as a Trainee or Admin
    And have a profile set up
    When I am on the Sparta profile
    And I click on pdf
    Then I should be taken to the pdf of the profile

  Scenario: Deleting a profile
    Given: I am logged in as a Trainee or Admin
    When I am on the Sparta profile
    And: I click the delete button on a selected profile
    And: I click the confirm button on the pop up
    Then: I can no longer access the profile link
    And: A confirmation message will appear

  Scenario: Edit profile page to check word count
    Given: I am logged in as a Trainee or Admin
    When I am on the Sparta profile
    And: I click the edit button on a selected profile
    And: I add more words to the description
    Then: the word count for description should decrease
