@profiles
Feature: Profiles

@profiles1
@profiles3
@profiles4
@profiles7
@profiles11
Scenario: I should be able to add a new profile
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click on new profile
  And I enter a summary
  And I select a stream
  And I enter a degree
  And I click save on profiles
  Then a profile should be created

@profiles2
Scenario: I should be able to check no degree
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click on new profile
  And I enter a summary
  And I select a stream
  And I click on no degree
  And I click save on profiles
  Then a profile should be created
  And it should say not applicable under university degree

@profiles3
@admin_requires_profile
Scenario: Deleting a profile
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click the delete button on a selected profile
  And I click the confirm button on the pop up
  Then I can no longer access the profile link
  And A confirmation message will appear

@profiles4
Scenario: Deleting a profile and aborting deletion
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click the delete button on a selected profile
  And I click the cancel button on the pop up
#  Then I can still view the profile link on the profile page

@profiles5
Scenario: I should be shown an error message when I don't enter a summary
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click on new profile
  And I select a stream
  And I enter a degree
  And I click save on profiles
  Then an error should appear saying: Summary can't be blank

@profiles6
Scenario: I should be shown an error message when I don't enter a degree
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click on new profile
  And I enter a summary
  And I select a stream
  And I click save on profiles
  Then an error should appear saying: Degree can't be blank and Degree is too short

@profiles7
Scenario: I should be able to edit a profile
  Given I am logged in as a Trainee or Admin
  When Im on the profile page
  And I click the edit button on a selected profile
  And I enter a summary
  And I select a stream
  And I enter a degree
  And I click save on profiles
  Then a profile should create an updated profile
  And not change the old profile
#
# @profiles8 --- UPDATE- There is no word count to check
# Scenario: Edit profile page to check word count remains the same
#   Given I am logged in as a Trainee or Admin
#   When I am on the profile page
#   And I click the edit button on a selected profile
#   And I do not add more words to the description
#   Then the word count for description should remain the same

# @profiles9  --- UPDATE- There is no word count to check
# Scenario: Edit profile page to check word count decreases
#   Given I am logged in as a Trainee or Admin
#   When I am on the profile page
#   And I click the edit button on a selected profile
#   And I add more words to the description
#   Then the word count for description should decrease
#
# @profiles10  --- UPDATE- There is no word count to check
# Scenario: Edit profile page to check word count increases
#   Given I am logged in as a Trainee or Admin
#   When I am on the profile page
#   And I click the edit button on a selected profile
#   And I take some words out from the description
#   Then the word count for description should increase

@profiles11
Scenario: I should be able to view as a pdf
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click on pdf
  Then I should be taken to the pdf of the profile

@profiles12
Scenario: Status should be pending
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click on new profile
  And I enter a summary
  And I enter a degree
  And I select Pending radio button from the Status options
  And  I click save on profiles
  Then the status of profile should appear as pending in the profiles page

@profiles13
Scenario: Status should be Draft
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click on new profile
  And I enter a summary
  And I enter a degree
  And I select Draft radio button from the Status options
  And I click save on profiles
  Then the status of profile should appear as Draft in the profiles page

@profilesFAILTINGTEST
Scenario: Eight skills should be selected by default
  Given I am logged in as a Trainee or Admin
  When I am on the profile page
  And I click on new profile
  Then 8 skills should be selected
