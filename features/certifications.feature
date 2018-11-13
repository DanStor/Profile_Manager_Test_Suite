Feature: Certifications

  # Adding Certifications


  # All details valid
  Scenario: Adding Certifications with valid details
    Given I'm on the Certifications page
    When I press new Certification
    And I add a valid title
    And I add a valid description
    And I press save
    Then the certification is added

  # All details invalid
  Scenario: Adding Certifications with invalid details
    Given I'm on the Certifications page
    When I press new Certification
    And I add an invalid title
    And I add an invalid description
    And I press save
    Then an error is displayed

  # No details added
  Scenario: Adding Certifications with no details
    Given I'm on the Certifications page
    When I press new Certification
    And I press save
    Then an error is displayed

  # Only invalid description
  Scenario: Adding Certifications with invalid description length
    Given I'm on the Certifications page
    When I press new Certification
    And I add a valid title
    And I add an invalid description (character length greater than 600)
    And I press save
    Then an error is displayed

  #Only invalid title
  Scenario: Adding Certifications with invalid description length
    Given I'm on the Certifications page
    When I press new Certification
    And I add an invalid title (less than 5 characters)
    And I add a valid description
    And I press save
    Then an error is displayed

  #character count display incrase
  Scenario: Adding characters to the description for certification should increase character count displayed.
    Given I'm on the Certifications page
    When I press new Certification
    And I add a valid title
    And I add some characters to the description
    Then the character count should increase

    #character count display descrease
    Scenario: Adding characters to the description for certification should decrease character count displayed.
      Given I'm on the Certifications page
      When I press new Certification
      And I add a valid title
      And I add some characters to the description
      And I remove some characters from the description
      Then the character count should decrease

  Scenario: Viewing Certifications
    Given I'm on the Certifications page
    Then I should be able to view certifications

  Scenario: Editting Certifications
    Given I'm on the Certifications page
    When I press the title of a specific certification
    And I edit the title
    And I edit the description
    And I press save
    Then the changes should be reflected

  Scenario: Deleting Certifications
    Given I'm on the Certifications page
    When I press destroy for a spcecific certification
    Then the certification should be removed
