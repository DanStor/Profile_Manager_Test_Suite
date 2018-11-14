Feature: Comments Section

  @comments1
  Scenario: PM-105 As a user, I should be notified of comments made on my profile
    Given that comments have been made to a users profile
    When the changes are saved
    Then a notification is sent to the relevant student

  @comments
  Scenario: PM-108 As a user, I should be able to see the comments made on my profile
    Given that the user is logged in and is viewing their own profile
    When the profile is displayed
    Then the user should be able to see the comments made and by which admin
