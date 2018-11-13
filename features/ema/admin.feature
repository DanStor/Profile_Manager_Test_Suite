Feature: Admin Features

  Scenario: PM-116 As an admin user, I should be able to add members to any group.
  Given the user is logged in and is an admin
  When a user clicks to add a member
  Then all members should show and the user should be able to select one to go into a group

  Scenario: PM-111 As an admin user, I should be able to remove members from a group.
  Given the user is logged in and is an admin
  When the user clicks to remove a member
  Then the member should no longer be displayed in that group

  Scenario: PPM-114 As an admin user, I should be able to create groups.
  Given the user is logged in and is an admin
  When the user creates a group
  Then the group should be added to the database

  Scenario: PM-112 As an admin user, I should be able to delete an entire group.
  Given the user is logged in and is an admin
  When the user clicks to remove a group
  Then the entire group should not be displayed, and the member disassociated with the group

  Scenario: PM-124 As a admin I should be able to filter profiles by team.
  Given that the user is logged in
  And is an admin
  When navigating through the profile list
  Then the admin should be able to filter the profiles by teams.

  Scenario: PM-129 Verify that the ‘Status’ option ‘PENDING’ shows profiles that are ‘Pending’.
  Given an admin is logged in
  And profiles has been selected
  And status is selected from the drop down menu
  And pending is selected
  Then user should only see profiles with a status of pending


  Scenario: PM-130 Verify that the ‘Status’ option ‘DRAFT’ shows the profiles that are in ‘Draft’.
  Given a user is logged in as an admin
  And the profiles section has been selected
  And from the drop down status is clicked
  And draft is selected
  Then the user should only see profiles with a status of draft.

  Scenario: PM-140 Verify that an admin user can comment on a specific part of any profile
  Given a user is on sparta profiles
  When a profile is selected
  And comments button is selected
  And the title of the section to add a comment to is selected
  And the text box is selected
  And a comment is input
  And then verify “Comment was created successfully” shows in green at the top of the screen when the comment has been made
  Then Go back to the profile that you made a comment on and check that the comment is visible underneath the section that you commented on

  Scenario: PM-151 Pending is selected as a status, profiles with Draft status are shown as well
  Given the user goes to the site URL
  And logs into the admin profiles
  And clicks on profiles
  And the status drop down menu is selected
  Then as Pending is selected as a status, profiles with Draft status are shown as well as profiles with Pending status

  Scenario: PM-152 Draft is selected as a status, all profiles, regardless of allocated status are shown as well
  Given the user goes to the site URL
  And has logged in on an admin account
  And profiles is selected
  And status has been clicked from the drop down menu
  And draft has been selected
  Then Draft is selected as a status, all profiles, regardless of allocated status are shown as well as profiles with Draft status

  Scenario: PM-173 Test - That Admins are able to add sections
  Given you are logged in as an admin
  And you go into sections
  When new section is clicked
  And details have been input
  And I have pressed save
  Then new section is added
