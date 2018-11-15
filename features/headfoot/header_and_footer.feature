Feature: Header and Footer

# Before Logging In
  @headfoot1
  Scenario: I should not be able to click links if not logged in
    Given I am not logged in
    When I click on the left sparta sign
    And I click on the skills tab
    And I click on the projects tab
    And I click on the employement tab
    And I click on the education tab
    And I click on the certifications tab
    And I click on the custom sections tab
    And I click on the log in tab
    Then I will be redirected back to the login page

# After Logging In
  @headfoot2
  Scenario: I should be directed to the profiles page
    Given I am logged in
    When I click the left top sparta sign
    Then I am directed to the profiles page

  @headfoot3
  Scenario: I should be directed to the profiles page
    Given I am logged in
    When I click the profiles tab
    Then I am directed to the profiles page

  @headfoot4
  Scenario: I should be directed to the skills page
    Given I am logged in
    When I click the skills tab
    Then I am directed to the skills page

  @headfoot5
  Scenario: I should be directed to the projects page
    Given I am logged in
    When I click the projects tab
    Then I am directed to the projects page

  @headfoot6
  Scenario: I should be directed to the employement page
    Given I am logged in
    When I click the employement tab
    Then I am directed to the employement page

  @headfoot7
  Scenario: I should be directed to the educations page
    Given I am logged in
    When I click the educations tab
    Then I am directed to the educations page

  @headfoot8
  Scenario: I should be directed to the certifications page
    Given I am logged in
    When I click the certifications tab
    Then I am directed to the certifications page

  @headfoot9
  Scenario: I should be directed to the customs section page
    Given I am logged in
    When I click the customs section tab
    Then I am directed to the customs section page

  @headfoot10
  Scenario: I should be directed to the profiles page
    Given I am logged in
    When I click the welcome username tab
    Then I am directed to the profiles page

  @headfoot11
  Scenario: I should be directed to the login page
    Given I am logged in
    When I click the logout tab
    Then I am directed to the login page

# Either Logged In Or Not Logged In
  @headfoot12
  Scenario: I should be directed to the sparta site
    Given I am on the page
    When I click on the bottom left sparta logo
    Then I will be redirected to the sparta global site

  @headfoot13
  Scenario: I should be directed to the sparta instagram site
    Given I am on the page
    When I click on the bottom instagram logo
    Then I will be redirected to the sparta global instagram site

  @headfoot14
  Scenario: I should be directed to the sparta twitter site
    Given I am on the page
    When I click on the bottom twitter logo
    Then I will be redirected to the sparta global twitter site

  @headfoot15
  Scenario: I should be directed to the sparta linkedin site
    Given I am on the page
    When I click on the bottom linkedin logo
    Then I will be redirected to the sparta global linkedin site

  @headfoot16
  Scenario: I should be directed to the sparta facebook site
    Given I am on the page
    When I click on the bottom facebook logo
    Then I will be redirected to the sparta global facebook site

  @headfoot17
  Scenario: I should be directed to the sparta github site
    Given I am on the page
    When I click on the bottom github logo
    Then I will be redirected to the sparta global github site

  # Logged in as an Admin
  @headfoot18
  Scenario: Logged in as an admin I should be able to get to the profiles page
    Given I am logged in as an admin account
    When I click the top left sparta logo
    Then I am redirected to the profiles page

  @headfoot19
  Scenario: Logged in as an admin I should be able to get to the profiles page
    Given I am logged in as an admin account
    When I click the profiles tab
    Then I am directed to the profiles page

  @headfoot20
  Scenario: Logged in as an admin I should be able to get to the sections page
    Given I am logged in as an admin account
    When I click the sections tab
    Then I am directed to the sections page

  @headfoot21
  Scenario: Logged in as an admin I should be able to get to the teams page
    Given I am logged in as an admin account
    When I click the teams tab
    Then I am directed to the teams page

  # This test is slightly weird- when logged in as admin and you click the bottom links then you should
  # be taken to http://localhost:3000/profiles/20/edit for some reason so just check those links take you there
  @headfoot22
  Scenario: Logged in as an admin I click the bottom links
    Given I am logged in as an admin account
    When I click the bottom links
    Then I am directed to the http://localhost:3000/profiles/20/edit page
