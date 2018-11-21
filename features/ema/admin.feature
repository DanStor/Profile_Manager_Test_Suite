@admin
Feature: Admin Features

  @admin3
  @admin1
  @admin4
  Scenario: PPM-114 As an admin user, I should be able to create groups.
  Given the user is logged in and is an admin
  When the user creates a group
  Then the group should be added to the database

  @admin1
  @admin_requires_profile
  Scenario: PM-116 As an admin user, I should be able to add members to any group.
  Given the user is logged in and is an admin
  When a user clicks to add a member
  Then the user should see the Team dropdown menu and the user should be able to select a group to go into

  @admin2
  @admin_requires_profile
  Scenario: PM-111 As an admin user, I should be able to remove members from a group.
  Given the user is logged in and is an admin
  When the user clicks to remove a member
  Then the member should no longer be displayed in that group

  @admin4
  Scenario: PM-112 As an admin user, I should be able to delete an entire group.
  Given the user is logged in and is an admin
  When the user clicks to remove a group
  Then the entire group should not be displayed, and the member disassociated with the group

  @admin5
  @admin_requires_profile
  Scenario: PM-124 As a admin I should be able to filter profiles by team.
  Given that the user is logged in
  And is an admin
  When navigating through the profile list
  Then the admin should be able to filter the profiles by teams.

  @admin6
  @admin_requires_profile
  Scenario: PM-129 Verify that the ‘Status’ option ‘PENDING’ shows profiles that are ‘Pending’.
  Given an admin is logged in
  And profiles has been selected
  And status is selected from the drop down menu
  And pending is selected
  Then user should only see profiles with a status of pending

  @admin7
  @admin_requires_profile
  Scenario: PM-130 Verify that the ‘Status’ option ‘DRAFT’ shows the profiles that are in ‘Draft’.
  Given a user is logged in as an admin
  And the profiles section has been selected
  And from the drop down status is clicked
  And draft is selected
  Then the user should only see profiles with a status of draft.

  @admin8
  @admin_requires_profile
  Scenario: PM-140 Verify that an admin user can comment on a specific part of any profile
  Given a user is on sparta profiles
  When a profile is selected
  And comments button is selected
  And the title of the section to add a comment to is selected
  And the text box is selected
  And a comment is input
  And then verify “Comment was successfully created.” shows in green at the top of the screen when the comment has been made
  Then Go back to the profile that you made a comment on and check that the comment is visible underneath the section that you commented on

  # @admin9
  # Scenario: PM-151 Pending is selected as a status, profiles with Draft status are shown as well
  # Given the user goes to the site URL
  # And logs into the admin profiles
  # And clicks on profiles
  # And the status drop down menu is selected
  # Then as Pending is selected as a status, profiles with Draft status are shown as well as profiles with Pending status

  # @admin10
  # Scenario: PM-152 Draft is selected as a status, all profiles, regardless of allocated status are shown as well
  # Given the user goes to the site URL
  # And has logged in on an admin account
  # When draft has been selected from the drop down menu
  # Then Draft is selected as a status, all profiles, regardless of allocated status are shown as well as profiles with Draft status

  @admin11
  @admin13
  @admin14
  Scenario: PM-173 Test - That Admins are able to add sections
  Given you are logged in as an admin
  And you go into sections
  When new section is clicked
  And details have been input
  And I have pressed save
  Then new section is added

  @admin12
  Scenario: PM-173 Test - That Admins arent able to add blank sections
  Given you are logged in as an admin
  And you go into sections
  When new section is clicked
  And details have been left blank
  And I have pressed save
  Then new section is not added

  @admin13
  Scenario: That Admins are able to delete sections
  Given you are logged in as an admin
  And you go into sections
  When the Destroy button for the last section is clicked
  Then new section is removed and notice is shown

  @admin14
  Scenario: That Admins are able to edit sections
  Given you are logged in as an admin
  And you go into sections
  When the Edit button for the last section is clicked
  And edit the section
  And save the section
  Then the section info should be changed and the notice is shown

  @admin15
  Scenario: Admins shouldn't be able to add an empty team name
  Given you are logged in as an admin
  When you try to create a team with a blank name
  Then the team shouldn't be created
