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
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I have a profile") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on the profiles page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I edit my profile") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("check the skill box") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the skill should be added to my profile") do
  pending # Write code here that turns the phrase above into concrete actions
end

# Scenario 3
When("I dont enter a skill") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the error should be displayed") do
  pending # Write code here that turns the phrase above into concrete actions
end
