# Scenario 1
Given("I am not logged in") do

  header_and_footer.log_in_page

end

When("I click on the left sparta sign") do
  header_and_footer.sparta_global_sign
end

When("I click on the skills tab") do
  header_and_footer.click_skills
end

When("I click on the projects tab") do
  header_and_footer.click_projects
end

When("I click on the employement tab") do
  header_and_footer.click_employment
end

When("I click on the education tab") do
  header_and_footer.click_education
end

When("I click on the certifications tab") do
  header_and_footer.click_certifications
end

When("I click on the custom sections tab") do
  header_and_footer.click_custom_sections
end

When("I click on the log in tab") do
  header_and_footer.click_log_in
end

Then("I will be redirected back to the login page") do
  header_and_footer.log_in_page
end

# Scenario 2
Given("I am logged in") do
  header_and_footer.check_logged_in
  comments.visit_page #Arun added for his tests to work
  sign_in.sign_in_student #Arun added for his tests to work
end

When("I click the left top sparta sign") do
  header_and_footer.sparta_global_sign_click
end

Then("I am directed to the profiles page") do
  expect(header_and_footer.sparta_global_sign).to eq "http://localhost:3000/profiles"
end

# Scenario 3
When("I click the profiles tab") do
  pending # Write code here that turns the phrase above into concrete actions
end

# Scenario 4
When("I click the skills tab") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am directed to the skills page") do
  pending # Write code here that turns the phrase above into concrete actions
end

# Scenario 5
When("I click the projects tab") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am directed to the projects page") do
  pending # Write code here that turns the phrase above into concrete actions
end

# Scenario 6
When("I click the employement tab") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am directed to the employement page") do
  pending # Write code here that turns the phrase above into concrete actions
end

# Scenario 7
When("I click the educations tab") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am directed to the educations page") do
  pending # Write code here that turns the phrase above into concrete actions
end

# Scenario 8
When("I click the certifications tab") do
  header_and_footer.click_certifications
end

Then("I am directed to the certifications page") do
  expect(current_url).to eq 'http://localhost:3000/certifications'
end

# Scenario 9
When("I click the customs section tab") do
  header_and_footer.click_customs_section
end

Then("I am directed to the customs section page") do
  expect(current_url).to eq 'http://localhost:3000/customs'
end

# Scenario 10
When("I click the welcome username tab") do
  header_and_footer.click_welcome_name
end

# Scenario 11
When("I click the logout tab") do
  header_and_footer.log_out
end

Then("I am directed to the login page") do
  expect(current_url).to eq 'http://localhost:3000/login'
end

# Scenario 12
Given("I am on the page") do
  comments.visit_page
end

When("I click on the bottom left sparta logo") do
  header_and_footer.click_sparta_logo
end

Then("I will be redirected to the sparta global site") do
  expect(current_url).to eq 'https://www.spartaglobal.com/'
end

# Scenario 13
When("I click on the bottom instagram logo") do
  header_and_footer.click_instagram_logo
end

Then("I will be redirected to the sparta global instagram site") do
  expect(current_url).to eq 'https://www.instagram.com/spartaglobal/?hl=en'
end

# Scenario 14
When("I click on the bottom twitter logo") do
  header_and_footer.click_twitter_logo
end

Then("I will be redirected to the sparta global twitter site") do
  expect(current_url).to eq 'https://twitter.com/spartaglobal?lang=en'
end

# Scenario 15
When("I click on the bottom linkedin logo") do
  header_and_footer.click_linkedin
end

Then("I will be redirected to the sparta global linkedin site") do
  expect(current_url).to include "https://www.linkedin.com"
end

# Scenario 16
When("I click on the bottom facebook logo") do
  header_and_footer.click_fb
end

Then("I will be redirected to the sparta global facebook site") do
  expect(current_url).to include "https://en-gb.facebook.com/spartaglobal/"
end

# Scenario 17
When("I click on the bottom github logo") do
  header_and_footer.click_github
end

Then("I will be redirected to the sparta global github site") do
  expect(current_url).to include "https://github.com/spartaglobal"
end

# Scenario 18
Given("I am logged in as an admin account") do
  comments.visit_page
  sign_in.sign_in_admin
end

When("I click the top left sparta logo") do
  header_and_footer.click_top_left_sparta_logo
end

Then("I am redirected to the profiles page") do
  expect(current_url).to eq "http://localhost:3000/profiles"
end

# Scenario 20
When("I click the sections tab") do
  header_and_footer.click_sections
end

Then("I am directed to the sections page") do
  expect(current_url).to eq "http://localhost:3000/sections"
end

# Scenario 21
When("I click the teams tab") do
  header_and_footer.click_teams
  sleep 4
end

Then("I am directed to the teams page") do
  expect(current_url).to eq "http://localhost:3000/teams"
end

# Scenario 22
Then("I shouldn't have a footer link to Projects") do
  expect(header_and_footer.check_projects).to eq false
end

Then("I shouldn't have a footer link to Employment") do
  expect(header_and_footer.check_employment).to eq false
end

Then("I shouldn't have a footer link to Education") do
  expect(header_and_footer.check_education).to eq false
end

Then("I shouldn't have a footer link to Certifications") do
  expect(header_and_footer.check_certifications).to eq false
end
