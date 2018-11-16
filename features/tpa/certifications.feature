Feature: Certifications

  # Adding Certifications


  # All details valid
  @certification
  Scenario: Adding Certifications with valid details
    Given I'm on the Certifications page
    When I press new Certification
    And I add a valid title
    And I add a valid description
    And I press save
    Then the certification is added

  # All details invalid
  @certification
  @certification_invalid_description
  Scenario: Adding Certifications with invalid details
    Given I'm on the Certifications page
    When I press new Certification
    And I add an invalid title
    And I add an invalid description
    Then too many words error is displayed

  # No details added
  @certification
  Scenario: Adding Certifications with no details
    Given I'm on the Certifications page
    When I press new Certification
    And I press save
    Then an error is displayed

  # Only invalid description
  @certification
  @certification_invalid_description
  Scenario: Adding Certifications with invalid description length
    Given I'm on the Certifications page
    When I press new Certification
    And I add a valid title
    And I add an invalid description
    Then too many words error is displayed

  # Only invalid description paste
  @certification
  @certification_invalid_description
  Scenario: Adding Certifications with invalid description length pasted into the text box
    Given I'm on the Certifications page
    When I press new Certification
    And I add a valid title
    And I paste an invalid description
    Then too many words error is displayed

  #Only invalid title
  @certification
  @certification_invalid_title
  Scenario: Adding Certifications with invalid title length - should be added
    Given I'm on the Certifications page
    When I press new Certification
    And I add an invalid title
    And I add a valid description
    And I press save
    Then the certification is added

  #Word count display decrease
  @certification
  Scenario: Adding words to the description for certification should decrease word count displayed.
    Given I'm on the Certifications page
    When I press new Certification
    When I add some words to the description
    Then the word count should decrease

  #Word count display increase
  @certification
  Scenario: Removing words from the description for certification should increase word count displayed.
    Given I'm on the Certifications page
    When I press new Certification
    When I add some words to the description
    And I remove some words from the description
    Then the word count should increase

  @certification
  Scenario: Viewing Certifications
    Given I'm on the Certifications page
    Then I should be able to view certifications

  @certification
  Scenario: Editting Certifications
    Given I'm on the Certifications page
    When I press edit for a specific certification
    And I edit the title
    And I edit the description
    And I press save
    Then the changes should be reflected

  @certification
  Scenario: Deleting Certifications then cancel
  Given I'm on the Certifications page
  When I press destroy for a single certification
  When I press cancel
  Then the certification should not be removed

  @certification
  Scenario: Deleting Certifications and confirm
    Given I'm on the Certifications page
    When I press destroy for a single certification
    When I press confirm
    Then the certification should be removed
