Feature:  Employment History


  @danRhys
  Scenario: PM-191 - As a user, I must be able to view employment history item

  Given I am on the employment page
  When I click on an item
  Then I am now on the show page for that specific item

  @danRhys
  Scenario: PM-192 As a user, I must be able to create a new employment history item

  Given I am on the employment page
  When I click the new employment button
  And I enter valid details
  And I click the save button
  Then I am redirected to the employment show page
  And I see the employment was successfully created message
  And I press the back button
  And I see the employment page
  And I can see the new item

  Given I am on the employment page
  When I click the new employment button
  And I enter no details
  And I click the save button
  Then I see eleven error messages displayed

  Given I have recieved error messages when creating a new employment item with invalid details
  When I click the back button
  Then I should not see a new item

  # @danRhys
  Scenario: PM-193 As a user, I must be able to delete an employment history item

  Given I am on the employment page
  When I press the destroy button for a specific item
  And I click the confirm button on the delete entry alert
  Then the targeted item should no longer be displayed on the employment page
  And I see a successfully destroyed message

  Given I am on the employment page
  When I press the destroy button for a specific item
  And I click the cancel button on the delete entry alert
  Then the targeted item remains on the employment page

  # @danRhys
  Scenario: PM-194 As a user, I must be able to edit an employment history item

  Given I am on the edit page for an employment item
  When I enter valid details
  And I click the save button
  Then I am redirected to the employment show page
  And I see the employment was successfully updated message

  # @danRhys
  Scenario: PM-196 As a user, when I am adding employment history I should be able to select an option that I am currently employed.

  Given I am on the new employment form page
  When I enter valid details
  And I click the currently employed checkbox
  Then the currently employed checkbox should be selected

  # @danRhys
  Scenario: PM-202 As a user, I shouldn't be able to put a date after the current date, in the employments page, unless I check the still employed box.

  Given I am on the new employment form page
  When I enter valid details
  And I click the currently employed checkbox
  And I edit the end date to a date after the current date
  # Fails at this stage as the end date input field becomes untargetable
  Then the end date should display the date that was just input

  # @danRhys
  Scenario: PM-203 Failed Test - User is able to enter a data after the current date when the still employed option is not clicked, in the employments page

  Given I am on the new employment form page
  When I enter valid details
  And the still employed button has not been clicked
  Then I should not be able to edit the end date to a date after the current date
