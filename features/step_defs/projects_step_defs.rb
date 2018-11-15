# Scenario 1
Given("I am on the projects pages") do
  pm_projects.visit_homepage
  sign_in.sign_in_student
  pm_projects.click_projects_tab
end

When("I click on add project") do
  pm_projects.click_new_project
end

When("I input a title") do
  pm_projects.fill_in_title
end

When("I input a description") do
  pm_projects.fill_in_description
end

When("I select a start date") do
  pm_projects.valid_input_start_date
end

When("I select an end date") do
  pm_projects.valid_input_end_date
end

When("I clicked save") do
  pm_projects.save
end

Then("a project should be created") do
  expect(pm_projects.check_if_project_added).to eq '*Project was successfully created.'
end

# Scenario 2
Then("I should be displayed with {int} errors") do |int|
  expect(pm_projects.check_if_has_10_errors).to be true
end

# Scenario 3
Given("I am on the profiles pages") do
  pm_projects.visit_homepage
  sign_in.sign_in_student
end

When("I click on edit") do
  pm_projects.click_edit_profile
end

When("I check the project box") do
  pm_projects.profile_checkbox
end

Then("I should be able to see the project on my profile") do
  expect(pm_projects.check_if_project_added).to eq '*Profile was successfully updated.'
  sleep 4
end

# Scenario 4
When("I select an invalid start date") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I select an invalid end date") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be presented with an error") do
  pending # Write code here that turns the phrase above into concrete actions
end

# Scenario 5
Given("I am on the projects page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click edit") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I edit some details") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the project should be edited") do
  pending # Write code here that turns the phrase above into concrete actions
end

# Scenario 6
When("I click destroy") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the project should be destroyed") do
  pending # Write code here that turns the phrase above into concrete actions
end
