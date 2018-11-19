# _____ Scenario 1 _____
Given("the user is logged in and is an admin") do
  admin.visit_login
  admin.admin_log_in_email
  admin.log_in_password
  admin.submit
end

When("a user clicks to add a member") do
  admin.create_profile_button
end

Then("the user should see the Team dropdown menu and the user should be able to select a group to go into") do
  expect(admin.drop_down_menu).to eq true
end

# _____ Scenario 2 _____
When("the user clicks to remove a member") do
  admin.profile_delete_button
  sleep 1
  admin.profile_delete_button_confirm
end


Then("the member should no longer be displayed in that group") do
  expect(admin.profile_removed).to eq '*Profile was successfully destroyed.'
end
#_____ Scenario 3 _____
When("the user creates a group") do
  admin.add_group_as_admin
  admin.create_new_group
  admin.new_team_name
  admin.click_create_team
end

Then("the group should be added to the database") do
  expect(admin.check_message).to eq 'Team was successfully created.'
end

# _____ Scenario 4 _____
When("the user clicks to remove a group") do
  admin.add_group_as_admin
  admin.destroy_team
  sleep 1
  admin.confirm_team_destroy
end

Then("the entire group should not be displayed, and the member disassociated with the group") do
  expect(admin.check_message).to eq 'Team was successfully destroyed.'
end

# _____ Scenario 5 _____
Given("that the user is logged in") do
  admin.visit_login
  admin.admin_log_in_email
  admin.log_in_password
  admin.submit
end
#
And("is an admin") do
  admin.confirm_admin_login
end

When("navigating through the profile list") do
  admin.visit_profile_page
end

Then("the admin should be able to filter the profiles by teams.") do
  admin.filter_teams "Testing 2"
  expect(admin.filtered_name).to be true
end

# _____ Scenario 6 _____
Given("an admin is logged in") do
  admin.visit_login
  admin.admin_log_in_email
  admin.log_in_password
  admin.submit
end

And("profiles has been selected") do
  admin.profiles_page
end

And("status is selected from the drop down menu") do
  admin.status_drop_down
end

Given("pending is selected") do
  admin.pending_drop_down
end

Then("user should only see profiles with a status of pending") do
  expect(admin.shows_only_pending_profiles?).to be true
end

# _____ Scenario 7 _____
Given("a user is logged in as an admin") do
  admin.visit_login
  sign_in.sign_in_admin
end

Given("the profiles section has been selected") do
  # Already on page
end

Given("from the drop down status is clicked") do
  admin.click_profiles_status
end

Given("draft is selected") do
  admin.click_draft_option
end

Then("the user should only see profiles with a status of draft.") do
  expect(admin.isOnlyDraft).to eq true
end

# _____ Scenario 8 _____
Given("a user is on sparta profiles") do
  admin.visit_login
  sign_in.sign_in_admin
end

When("a profile is selected") do
  admin.click_on_profile
end

When("comments button is selected") do
  admin.click_on_comments
  sleep 1
end

When("the title of the section to add a comment to is selected") do
  comments.click_comments_section
end

When("the text box is selected") do

end

When("a comment is input") do
  comments.fill_in_comment
  comments.click_create_comment
end

When("then verify “Comment was successfully created.” shows in green at the top of the screen when the comment has been made") do
expect(comments.check_if_comment_added).to eq "Comment was successfully created."
end

Then("Go back to the profile that you made a comment on and check that the comment is visible underneath the section that you commented on") do
  admin.click_on_profile
  admin.click_on_comments
  sleep 1
  comments.click_comments_section
  expect(admin.checkCommentPresent).to eq true
end

# ____ Scenario 9 ______
Given("logs into the admin profiles") do
  sign_in.sign_in_admin
end

Given("clicks on profiles") do
  # Already on page
end

Given("the status drop down menu is selected") do
  admin.click_profiles_status
  admin.click_pending_option
end

Then("as Pending is selected as a status, profiles with Draft status are shown as well as profiles with Pending status") do
  expect(admin.isOnlyDraftAndPending).to eq true
end

# ____ Scenario 10 ______
Given("the user goes to the site URL") do
  admin.visit_login
end

Given("has logged in on an admin account") do
  sign_in.sign_in_admin
end

When("draft has been selected from the drop down menu") do
  admin.drop_down_menu_status
end

Then("Draft is selected as a status, all profiles, regardless of allocated status are shown as well as profiles with Draft status") do
  expect(admin.show_all_draft_status).to be true
end

#_____ Scenario 11 _____
Given("you are logged in as an admin") do
  admin.visit_login
  sign_in.sign_in_admin
end

Given("you go into sections") do
  admin.click_sections_link
end

When("new section is clicked") do
  admin.click_new_section
end

When("details have been input") do
  admin.fill_in_new_section
end

When("I have pressed save") do
  admin.save_new_section
end

Then("new section is added") do
  expect(admin.check_if_section_added).to eq '*Section was successfully created.'
end

# ____ Scenario 12 _____
When("details have been left blank") do
  admin.fill_in_new_section_blank
end

Then("new section is not added") do
  expect(admin.check_if_section_added).to_not eq '*Section was successfully created.'
end

# ____ Scenario 13 _____
When("the Destroy button for the last section is clicked") do
  admin.destroy_last_section
  admin.click_confirm
end

Then("new section is removed and notice is shown") do
  expect(admin.check_message).to eq "*Section was successfully destroyed."
end

# ____ Scenario 14 _____
When("the Edit button for the last section is clicked") do
  admin.edit_last_section
end

When("edit the section") do
  admin.change_info
end

When("save the section") do
  admin.save_new_section
end

Then("the section info should be changed and the notice is shown") do
  expect(admin.check_message).to eq "*Section was successfully updated."
  expect(admin.check_title).to eq true
  expect(admin.check_description).to eq true
  expect(admin.check_skills).to eq true
end

When("you try to create a team with a blank name") do
  admin.add_group_as_admin
  admin.create_new_group
  admin.click_create_team
end

Then("the team shouldn't be created") do
  expect(admin.check_message).to_not eq 'Team was successfully created.'
end
