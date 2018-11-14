Given("I am logged in as a Trainee or Admin") do

end

When("I am on the profile page") do
  profiles.visit_profile_page
end

When("I click on new profile") do
  profiles.click_create_profile
end

When("I enter a summary") do
  profiles.enter_summary "This is a summary"
end

When("I select a stream") do
  profiles.select_stream
end

When("I select a team") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter a degree") do
  profiles.enter_degree "Technical Consultant"
end

When("I click on modules") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click save") do
  pm_profiles.click_save_button
end

Then("a profile should be created") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on no degree") do
  profiles.select_no_degree
end

Then("it should say not applicable under university degree") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the delete button on a selected profile") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the confirm button on the pop up") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I can no longer access the profile link") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("A confirmation message will appear") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the cancel button on the pop up") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I can still view the profile link on the profile page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I don't enter a summary") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("an error should appear saying: Summary can't be blank") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I don't enter a degree") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("an error should appear saying: Degree can't be blank and Degree is too short minimum is {int} characters") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the edit button on a selected profile") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("a profile should create an updated profile") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("not change the old profile") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I do not add more words to the description") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the word count for description should remain the same") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I add more words to the description") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the word count for description should decrease") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I take some words out from the description") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the word count for description should increase") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on pdf") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be taken to the pdf of the profile") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I select Pending radio button from the Status options") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the status of profile should appear as pending in the profiles page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I select Draft radio button from the Status options") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the status of profile should appear as Draft in the profiles page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("{int} skills should be selected") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end
