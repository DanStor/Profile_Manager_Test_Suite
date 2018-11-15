# Scenario 1
Given("I am on the skills page") do
  pm_skills.visit_homepage
  sign_in.sign_in_student
  pm_skills.click_skills_tab
end

When("I click on create skill") do
  pm_skills.create_new_skill
end

When("I enter a skill") do
  pm_skills.fill_in_skill
end

When("I press save skill") do
  pm_skills.click_save
end

Then("a skill should be created") do
  expect(pm_skills.get_notice).to eq 'Skill was successfully created.'
end

# Scenario 2
Given("I have created a skill") do
  pm_skills.visit_homepage
  sign_in.sign_in_student
end

Given("I have a profile") do
  pm_skills.click_profiles
  pm_skills.click_new_profile
  pm_skills.input_profile_details
  pm_skills.click_save
end

Given("I am on the profiles page for skill") do
  pm_skills.click_profiles
end

When("I edit my profile") do
  pm_skills.click_edit_profile
end

When("check the skill box") do
  pm_skills.click_on_skill
  pm_skills.click_save
end

# Scenario 3
When ("I click on create a skill") do
  pm_skills.create_skill
end

Then("the skill should be added to my profile") do
  expect(pm_skills.expect_skill).to eq true
end

When("I dont enter a skill") do
  pm_skills.input_blank_skill
end

Then("the error should be displayed") do
  pm_skills.empty_skill_error
end

# Scenario 4
When("I click the edit link") do
  pm_skills.click_edit
end

When("edit some input details") do
  pm_skills.fill_in_skill_edited
end

Then("the skill is edited") do
  expect(pm_skills.get_notice).to eq 'Skill was successfully updated.'
  sleep 3
end

# Scenario 5
When("I click delete") do
pm_skills.delete_skill_button
end

When("confirm delete") do
pm_skills.confirm_delete
sleep 2
end

Then("the skill is deleted") do
  expect(pm_skills.get_notice).to eq 'Skill was successfully destroyed.'
end
