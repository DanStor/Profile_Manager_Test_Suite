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

Then("the skill should be added to my profile") do
  expect(pm_skills.expect_skill).to eq true
end

# Scenario 3
When("I dont enter a skill") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the error should be displayed") do
  pending # Write code here that turns the phrase above into concrete actions
end
