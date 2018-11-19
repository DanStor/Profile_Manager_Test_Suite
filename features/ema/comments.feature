Feature: Comments Section

  @comments1
  Scenario: PM-105 As a user, I should be notified of comments made on my profile
    Given that there is a user made
    Given that comments have been made to a users profile
    When the changes are saved
    Then the comments is saved and a notice appears

  @comments
  Scenario: PM-108 As a user, I should be able to see the comments made on my profile
    Given that the user is logged in and is viewing their own profile
    When the profile is displayed
    Then the user should get a notification that a comment has been made
