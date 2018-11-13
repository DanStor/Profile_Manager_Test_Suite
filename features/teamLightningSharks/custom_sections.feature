
@all
Feature: Custom Sections

  Scenario Outline: PM-98 As a user, when I am adding in a new section to my profile page in the custom section, I should be able to add volunteering, hobbies, and languages to my profile.

  Given I am on the create new custom page
  When I add a <section> to my profile
  And I add valid custom section details
  And I press the save button
  Then I am taken to the custom page
  And the newly made custom item is listed
  And the custom was successfully created message is displayed

  | section |
  | volunteering |
  | hobbies |
  | languages |

  # ADD IN THE DATA TABLE THING
  # ADDITIONAL POINT TO MAKE IS THAT THIS IS SUPPOSED TO BE A DROP DOWN RATHER THAN AN INPUT TEXT FIELD SO RAISE THIS ISSUE

  Scenario: PM-179 17M- User must be able to view custom sections

  Given I am on the custom page
  When I click a listed custom item
  Then I should be taken to the corresponding show page for that custom item

  # WILL FAIL AS TAKES YOU TO THE EDIT PAGE FOR THAT CUSTOM ITEM
  # SHOW PAGE DES EXIST HOWEVER HAVE TO MANUALLY ACCESS SUCH A PAGE
  @valid_custom_form
  Scenario: PM-180 18M-User must be able to create a custom section

  Given I am on the custom page
  When I click the new custom section button
  And I am taken to the the create new custom page
  And I add valid custom section details
  And I press the save button
  Then the newly made custom item is listed


  Scenario: PM-134 Verify that the drop-down menu in the Custom Section shows ‘Hobbies’, ‘Volunteering’ and ‘Languages

  Given I am on the create new custom page
  When I click the dropdown bar for the title section
   # TEST FAILS HERE AS NO DROPDOWN BAR IS PRESENT
  Then hobbies, volunteering and languages are listed in the dropdown menu

  Scenario: PM-182 19M-User must be able to delete a custom section

  Given I am on the custom page
  When I press the destroy button for a specific item
  And I click the confirm button on the delete entry alert
  Then the custom was successfully destroyed message is displayed
  And the targeted item should no longer be displayed on the custom page

  Given I am on the custom page
  When I press the destroy button for a specific item
  And I click the cancel button on the delete entry alert
  Then the targeted item remains on the custom page

  Scenario: PM-190 User must be able to edit a custom section

  Given I am on the edit page for a custom item
  When I add valid custom section details
  And I click the save button
  Then I am taken to the custom page
  And I see the custom section was successfully updated message
