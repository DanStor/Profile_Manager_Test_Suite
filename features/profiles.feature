



Scenario: I should be able to add a new profile
  Given I have logged in
  And have a profile set up
  When I am on the Sparta profile
  And I click on new profile
  And I enter a summary
  And I select a stream
  And I enter a degree of more than 5 characters
  And I click save
  Then a profile should be created

Scenario: I should be able to edit a profile
  Given I have logged in
  And have a profile set up
  When I am on the Sparta profile
  And I click on edit
  And I enter a summary
  And I select a stream
  And I enter a degree of more than 5 characters
  And I click save
  Then a profile should be updated

Scenario: I should be able to view as a pdf
  Given I have logged in
  And have a profile set up
  When I am on the Sparta profile
  And I click on pdf
  Then I should be taken to the pdf of the profile
