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
  pm_projects.invalid_start_date
end

When("I select an invalid end date") do
  pm_projects.invalid_end_date
end

Then("I should be presented with an error") do
  pm_projects.invalid_start_date_error
end

# Scenario 5
When("I click edit") do
  pm_projects.click_edit_profile
end

When("I edit some details") do
  pm_projects.edit_details
  pm_projects.save
end

Then("the project should be edited") do
  expect(pm_projects.check_if_project_added).to eq "*Project was successfully updated."
  expect(pm_projects.get_title "PRINCE2").to eq true
  expect(pm_projects.get_description "This is an edited description").to eq true
  expect(pm_projects.get_startDate "2018-09-01").to eq true
  expect(pm_projects.get_endDate "2018-10-01").to eq true
end

# Scenario 6
When("I click destroy") do
  pm_projects.delete_project_button
  sleep 1
end

When("I click confirmed") do
  pm_projects.confirm_delete
end

Then("the project should be destroyed") do
  expect(pm_projects.check_if_project_added).to eq '*Project was successfully destroyed.'
  sleep 2
end

# Scenario 7
When("I clicked cancel") do
  pm_projects.confirm_delete_cancel
end

Then("the project should not be destroyed") do
  expect(pm_projects.see_if_notice_is_on_page).to be true
end
