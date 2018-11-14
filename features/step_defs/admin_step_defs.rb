# _____ Scenario 1 _____
Given("the user is logged in and is an admin") do
  admin.visit_login
  admin.admin_log_in_email
  admin.log_in_password
  admin.submit
  sleep 5
end

When("a user clicks to add a member") do
  admin.create_profile_button
end

Then("all members should show and the user should be able to select one to go into a group") do
  admin.drop_down_menu
  sleep 5
end

# _____ Scenario 2 _____
When("the user clicks to remove a member") do
  admin.profile_delete_button
  sleep 1
  admin.profile_delete_button_confirm
  sleep 1
end


Then("the member should no longer be displayed in that group") do
  expect(admin.profile_removed).to eq '*Profile was successfully destroyed.'
  sleep 3
end
#_____ Scenario 3 _____
When("the user creates a group") do
  admin.add_group_as_admin
  admin.create_new_group
  admin.new_team_name
  admin.click_create_team
  # sleep 2
end

Then("the group should be added to the database") do
  expect(admin.check_message).to eq 'Team was successfully created.'
end

# _____ Scenario 4 _____
When("the user clicks to remove a group") do
  admin.add_group_as_admin
  admin.destroy_team
  sleep 2
  admin.confirm_team_destroy
  sleep 2
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
  sleep 3
end
#
And("is an admin") do

end
#
# When("navigating through the profile list") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("the admin should be able to filter the profiles by teams.") do
#
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Given("an admin is logged in") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Given("profiles has been selected") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Given("status is selected from the drop down menu") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Given("pending is selected") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("user should only see profiles with a status of pending") do
#
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
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

# _____ Scenario 9 _____
Given("the user goes to the site URL") do
  admin.visit_login
end

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
  sleep 5
end
#
# Given("has logged in on an admin account") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Given("profiles is selected") do
#
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Given("status has been clicked from the drop down menu") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Given("draft has been selected") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("Draft is selected as a status, all profiles, regardless of allocated status are shown as well as profiles with Draft s
# tatus") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Given("you are logged in as an admin") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
#
# Given("you go into sections") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# When("new section is clicked") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# When("details have been input") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# When("I have pressed save") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("new section is added") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# When("details have been left blank") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("new section is not added") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Given("that comments have been made to a users profile") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# When("the changes are saved") do
#   pending # Write code here that turns the phrase above into concrete actions
#
# end
#
# Then("a notification is sent to the relevant student") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Given("that the user is logged in and is viewing their own profile") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# When("the profile is displayed") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("the user should be able to see the comments made and by which admin") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
