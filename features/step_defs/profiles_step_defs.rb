index_url = 'http://localhost:3000/'
profile_url = 'http://localhost:3000/profiles'
new_profile_url = 'http://localhost:3000/profiles/new'
form_summary = "This is a summary"
form_degree = "Technical Consultant"
stream_option = 'BS Test Analyst'
saveButton = 'Save'
profile_created = "*Profile was successfully created."
profile_destroyed = "*Profile was successfully destroyed."

Given("I am logged in as a Trainee or Admin") do
  pm_profiles.visit_home
  sign_in.sign_in_student
  expect(current_url).to eq index_url
end

When("I am on the profile page") do
  pm_profiles.visit_profile_page
  expect(current_url).to eq profile_url
end

When("I click on new profile") do
  pm_profiles.click_create_profile
  expect(current_url).to eq new_profile_url
end

When("I enter a summary") do
  pm_profiles.enter_summary form_summary
  expect(pm_profiles.get_summary_value).to eq form_summary
end

When("I select a stream") do
  pm_profiles.select_stream
  expect(pm_profiles.select_stream).to eq stream_option
end

When("I select a team") do
  pm_profiles.select_team
end

When("I enter a degree") do
  pm_profiles.enter_degree form_degree
  expect(pm_profiles.get_degree_value).to eq form_degree
end

When("I click on modules") do
  pm_profiles.click_on_modules
end

When("I click save on profiles") do
  pm_profiles.click_save_button
  # expect(pm_profiles.click_save_button).to eq saveButton
end

Then("a profile should be created") do
  # expect(current_url).to eq profile_url
  pm_profiles.profile_created_message
end

When("I click on no degree") do
  pm_profiles.select_no_degree
  # expect(pm_profiles.select_no_degree).have_checked_field 'profile-form-no-degree'
end

Then("it should say not applicable under university degree") do
  pm_profiles.degree_not_applicable
end

When("I click the delete button on a selected profile") do
  @last_id = pm_profiles.get_last_id
  pm_profiles.delete_profile
end

When("I click the confirm button on the pop up") do
  pm_profiles.confirm_delete_button
end

Then("I can no longer access the profile link") do
  expect(pm_profiles.get_last_id).to_not eq @last_id
end

Then("A confirmation message will appear") do
  pm_profiles.delete_confirmation_message
end

When("I click the cancel button on the pop up") do
  pm_profiles.click_cancel_button
end

Then("I can still view the profile link on the profile page") do
  expect(pm_profiles.get_last_id).to eq @last_id
end

When("I don't enter a summary") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("an error should appear saying: Summary can't be blank") do
  expect(pm_profiles.summary_error_message).to be true
end

When("I don't enter a degree") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("an error should appear saying: Degree can't be blank and Degree is too short \(minimum is {int} characters)") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the edit button on a selected profile") do
  pm_profiles.click_edit_button
end

When("a profile should create an updated profile") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("not change the old profile") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I do not add more words to the description") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the word count for description should remain the same") do
  expect(pm_profiles.word_count).to eq word_count
end

When("I add more words to the description") do
  pm_profiles.enter_summary form_summary
end

Then("the word count for description should decrease") do
  expect(pm_profiles.word_count).to be < word_count
end

When("I take some words out from the description") do
  pm_profiles.remove_words
end

Then("the word count for description should increase") do
  expect(pm_profiles.word_count).to be > word_count
end

When("I click on pdf") do
  pm_profiles.click_PDF_link
end

Then("I should be taken to the pdf of the profile") do
  expect(current_url).to include '.pdf'
end

When("I select Pending radio button from the Status options") do
  pm_profiles.choose_pending
end

Then("the status of profile should appear as pending in the profiles page") do
  expect(pm_profiles.pending_status).to be true
end

When("I select Draft radio button from the Status options") do
  pm_profiles.choose_draft
end

Then("the status of profile should appear as Draft in the profiles page") do
  expect(pm_profiles.draft_status).to be true
end

Then("{int} skills should be selected") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end
