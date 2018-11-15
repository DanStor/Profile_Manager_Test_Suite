# Scenario 1
Given("I am on the skills page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on create skill") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I enter a skill") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I press save skill") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("a skill should be created") do
  pending # Write code here that turns the phrase above into concrete actions
end

# Scenario 2
Given("I have created a skill") do

end

Given("I have a profile") do
  pm_skills.click_profiles
  pm_skills.click_new_profile
  pm_skills.input_profile_details
  pm_skills.click_save
  sleep 4
end

Given("I am on the profiles page") do
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
