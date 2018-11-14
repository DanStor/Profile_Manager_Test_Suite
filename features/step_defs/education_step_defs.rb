education_url = 'http://localhost:3000/educations'
new_education_url = 'http://localhost:3000/educations/new'
profiles_url = 'http://localhost:3000/profiles'
valid_institution = 'Exeter University'
valid_course = 'Engineering'
valid_start_date = '01/09/2014'
expected_start_date = '2014-09-01'
valid_end_date = '01/06/2018'
expected_end_date = '2018-06-01'
description = 'This is a description'
success_notice_created = '*Education was successfully created.'
success_notice_updated = '*Education was successfully updated.'

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
end

When("I click on save") do
  pm_education.click_save_button
end

Then("I should be able to see an eduction was created") do
  expect(pm_education.get_notice).to eq success_notice_created
end

When("I go to the profiles page") do
  pm_education.visit_profile_nav
  expect(current_url).to eq profiles_url
end

When("I click on edit a profile") do
  pm_education.click_edit
end

When("I check the education box") do
  pm_education.check_education_box valid_institution
  expect(pm_education.get_selected_education valid_institution).to eq true
end

Then("I should be able to see the education on my profile") do
  expect(pm_education.find_education valid_institution).to eq true
end

When("I click on the name or the edit button") do
  pm_education.click_edit
end

Then("I should be able to see an eduction was updated") do
  expect(pm_education.get_notice).to eq success_notice_updated
end

When("I click on destroy") do
  pm_education.click_destroy
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
  pm_education.click_cancel
end

Then("the education should not be removed") do
  expect(pm_education.education_visible).to eq true
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
