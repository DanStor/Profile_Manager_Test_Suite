Feature: Certifications

  Scenario: Adding Certifications
    Given I'm on the Certifications page
    When I press new Certification
    And I add a title
    And I add a description
    And I press save
    Then the certification is added

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
