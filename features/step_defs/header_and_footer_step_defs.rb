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
  header_and_footer.log_in_page
  sign_in.sign_in_student
  header_and_footer.check_logged_in
  #
  # comments.visit_page #Arun added for his tests to work
  # sign_in.sign_in_student #Arun added for his tests to work

end

When("I click the left top sparta sign") do
  header_and_footer.sparta_global_sign_click
end

Then("I am directed to the profiles page") do
  header_and_footer.directed_to_profiles
end

# Scenario 3
When("I click the profiles tab") do
  header_and_footer.click_profile_header
end

# Scenario 4
When("I click the skills tab") do
  header_and_footer.click_skills_header
end

Then("I am directed to the skills page") do
  expect(current_url).to eq 'http://localhost:3000/skills'
end

# Scenario 5
When("I click the projects tab") do
  header_and_footer.click_projects_header
end

Then("I am directed to the projects page") do
  expect(current_url).to eq 'http://localhost:3000/projects'
end

# Scenario 6
When("I click the employement tab") do
  header_and_footer.click_employment_header
end

Then("I am directed to the employement page") do
  expect(current_url).to eq 'http://localhost:3000/employments'
end

# Scenario 7
When("I click the educations tab") do
  header_and_footer.click_education_header
end

Then("I am directed to the educations page") do
  expect(current_url).to eq 'http://localhost:3000/educations'
end

#
# # Scenario 8
# When("I click the certifications tab") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I am directed to the certifications page") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# # Scenario 9
# When("I click the customs section tab") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I am directed to the customs section page") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# # Scenario 10
# When("I click the welcome username tab") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# # Scenario 11
# When("I click the logout tab") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I am directed to the login page") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# # Scenario 12
# Given("I am on the page") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# When("I click on the bottom left sparta logo") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I will be redirected to the sparta global site") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# # Scenario 13
# When("I click on the bottom instagram logo") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I will be redirected to the sparta global instagram site") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# # Scenario 14
# When("I click on the bottom twitter logo") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I will be redirected to the sparta global twitter site") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# # Scenario 15
# When("I click on the bottom linkedin logo") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I will be redirected to the sparta global linkedin site") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# # Scenario 16
# When("I click on the bottom facebook logo") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I will be redirected to the sparta global facebook site") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# # Scenario 17
# When("I click on the bottom github logo") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I will be redirected to the sparta global github site") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# # Scenario 18
# Given("I am logged in as an admin account") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# When("I click the top left sparta logo") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# # Scenario 20
# When("I click the sections tab") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I am directed to the sections page") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# # Scenario 21
# When("I click the teams tab") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# Then("I am directed to the teams page") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#
# # Scenario 22
# When("I click the bottom links") do
#   pending # Write code here that turns the phrase above into concrete actions
# end
#


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
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the top left sparta logo") do
  pending # Write code here that turns the phrase above into concrete actions
end

# Scenario 20
When("I click the sections tab") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am directed to the sections page") do
  pending # Write code here that turns the phrase above into concrete actions
end

# Scenario 21
When("I click the teams tab") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am directed to the teams page") do
  pending # Write code here that turns the phrase above into concrete actions
end

# Scenario 22
When("I click the bottom links") do
  pending # Write code here that turns the phrase above into concrete actions
end

# Then("I am directed to the http:\/\/localhost:{int}\/profiles\/{int}\/edit page") do |int, int2|
#   pending # Write code here that turns the phrase above into concrete actions
# end
