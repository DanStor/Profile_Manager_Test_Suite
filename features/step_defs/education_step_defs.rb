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
success_notice_destroyed = '*Education was successfully destroyed.'
end_after_current = '01/01/2020'
end_before_start = '01/01/2001'

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
  expect(pm_education.get_institution_field).to eq valid_institution
  expect(pm_education.get_course_field).to eq valid_course
  expect(pm_education.get_start_date_field).to eq expected_start_date
  expect(pm_education.get_end_date_field).to eq expected_end_date
end

Then("I should be able to see an eduction was updated") do
  expect(pm_education.get_notice).to eq success_notice_updated
end

When("I click on destroy") do
  @last_id = pm_education.get_last_id
  pm_education.click_destroy
end

When("I click confirm") do
  pm_education.click_confirm
end

Then("the education should be removed") do
  expect(pm_education.get_last_id).to_not eq @last_id
end

Then("a confirmation message should appear") do
  expect(pm_education.get_notice).to eq success_notice_destroyed
end

When("I click cancel") do
  pm_education.click_cancel
end

Then("the education should not be removed") do
  expect(pm_education.get_last_id).to eq @last_id
end

When("I do not enter any details") do
  expect(pm_education.get_institution_field).to eq ""
  expect(pm_education.get_course_field).to eq ""
  expect(pm_education.get_start_date_field).to eq ""
  expect(pm_education.get_end_date_field).to eq ""
  expect(pm_education.get_description_field).to eq ""
end

Then("I should get {int} errors") do |int|
  expect(pm_education.get_errors).to eq int
end

When("I choose an end date after the current day") do
  pm_education.enter_end_date end_after_current
end

When("I choose an end date before the start date") do
  pm_education.enter_end_date end_before_start
end

Then("I should get an error about the end date") do
  expect(pm_education.get_errors).to eq 1
end

Then("I should get an errors about the start and end dates") do
  expect(pm_education.get_errors).to eq 2
end

When("I press the backspace") do
  @current_characters = pm_education.get_characters_remaining
  pm_education.enter_institution :backspace
end

Then("the remaining characters should reduce") do
  expect(pm_education.get_characters_remaining).to be < 100
end

Then("the remaining characters should increase") do
  expect(pm_education.get_characters_remaining).to be > @current_characters
end

Then("the remaining words should reduce") do
  expect(pm_education.get_words_remaining).to be < 100
end

When("I click on the name") do
  @last_id = pm_education.get_last_id.chars.last(2).join.to_i
  pm_education.click_name
end

Then("I should be taken to the show page") do
  expect(current_url).to eq "http://localhost:3000/educations/#{@last_id}"
end
