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

Then("I should be displayed with {int} errors") do |int|
  expect(pm_projects.check_if_has_10_errors).to be true
end

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
