education_url = 'http://localhost:3000/educations'
new_education_url = 'http://localhost:3000/educations/new'
valid_institution = 'Exeter University'
valid_course = 'Engineering'
valid_start_date = '01/09/2014'
expected_start_date = '2014-09-01'
valid_end_date = '01/06/2018'
expected_end_date = '2018-06-01'
description = 'This is a description'
success_notice = '*Education was successfully created.'

Given("I am on the education page") do
  pm_education.visit_education_nav
  expect(current_url).to eq education_url
end

When("I click on add education") do
  pm_education.click_add_education
  expect(current_url).to eq new_education_url
end

When("I fill in the institution") do
  pm_education.enter_institution valid_institution
  expect(pm_education.get_institution_field).to eq valid_institution
end

When("I fill in the course") do
  pm_education.enter_course valid_course
  expect(pm_education.get_course_field).to eq valid_course
end

When("I choose a start date") do
  pm_education.enter_start_date valid_start_date
  expect(pm_education.get_start_date_field).to eq expected_start_date
end

When("I choose an end date") do
  pm_education.enter_end_date valid_end_date
  expect(pm_education.get_end_date_field).to eq expected_end_date
end

When("I fill in the description") do
  pm_education.enter_description description
  # expect(pm_education.get_description_field).to eq description
end

When("I click on save") do
  pm_education.click_save_button
end

Then("I should be able to see an eduction") do
  expect(pm_education.get_notice).to eq success_notice
end

When("I click on edit") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I check the education box") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be able to see the education on my profile") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on the name or the edit button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be able to see my education on my profile") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on destroy") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click confirm") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the education should be removed") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("a confirmation message should appear") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click cancel") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the education should not be removed") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should still be able to see the education") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I do not enter any details") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should get {int} errors") do |int|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I choose an end date after the current day") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should get an error about the end date") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the remaining characters should reduce") do
  pending # Write code here that turns the phrase above into concrete actions
end
