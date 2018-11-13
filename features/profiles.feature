Feature: Profiles

Scenario: Deleting a profile
  Given: I am logged in as a Trainee or Admin
  When: I am on the profile page
  And: I click the delete button on a selected profile
  And: I click the confirm button on the pop up
  Then: I can no longer access the profile link
  And: A confirmation message will appear

Scenario: Deleting a profile
  Given: I am logged in as a Trainee or Admin
  When: I am on the profile page
  And: I click the delete button on a selected profile
  And: I click the cancel button on the pop up
  Then: I can still view the profile link on the profile page

Scenario: Edit profile page to check word count
  Given: I am logged in as a Trainee or Admin
  When: I am on the profile page
  And: I click the edit button on a selected profile
  And: I do not add more words to the description
  Then: the word count for description should remain the same

Scenario: Edit profile page to check word count
  Given: I am logged in as a Trainee or Admin
  When: I am on the profile page
  And: I click the edit button on a selected profile
  And: I add more words to the description
  Then: the word count for description should decrease

Scenario: Edit profile page to check word count
  Given: I am logged in as a Trainee or Admin
  When: I am on the profile page
  And: I click the edit button on a selected profile
  And: I take some words out from the description
  Then: the word count for description should increase
