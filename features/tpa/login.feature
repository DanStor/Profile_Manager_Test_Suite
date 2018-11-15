Feature: Log in

  @login
  @login_student
  Scenario: I should be able to log in as a student
    Given I am on the login page
    When I input my student email
    And I input my password
    And I press submit
    Then I should be logged in as a student

  @login
  @login_admin
  Scenario: I should be able to log in as an admin
    Given I am on the login page
    When I input my admin email
    And I input my password
    And I press submit
    Then I should be logged in as an admin

  @login
  Scenario: I shouldn't be able to log in with the wrong password
    Given I am on the login page
    When I input my student email
    And I input an incorrect password
    And I press submit
    Then I shouldn't be logged in and should get the error: your details are incorrect

  @login
  Scenario: I shouldn't be able to log in without entering anything
    Given I am on the login page
    When I press submit
    Then I shouldn't be logged in and should get the error: your details are incorrect
