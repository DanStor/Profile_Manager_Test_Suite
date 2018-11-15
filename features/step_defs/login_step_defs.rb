login_url = 'http://localhost:3000/login'
student_email = 'eng16student@spartaglobal.com'
admin_email = 'eng16admin@spartaglobal.com'
valid_password = 'Password123'
invalid_password = 'password'
welcome_text_student = 'Welcome , eng16 student'
welcome_text_admin = 'Welcome , eng16 admin (Admin)'
error_message = '*Your details are incorrect'

Given("I am on the login page") do
  visit('/')
  expect(current_url).to eq login_url
end

When("I input my student email") do
  login.enter_email student_email
  expect(login.get_email_field).to eq student_email
end


When("I input my password") do
  login.enter_password valid_password
  expect(login.get_password_field).to eq valid_password
end

When("I press submit") do
  login.click_submit
end

Then("I should be logged in as a student") do
  expect(login.get_welcome).to eq welcome_text_student
end

When("I input my admin email") do
  login.enter_email admin_email
  expect(login.get_email_field).to eq admin_email
end

Then("I should be logged in as an admin") do
  expect(login.get_welcome).to eq welcome_text_admin
end

When("I input an incorrect password") do
  login.enter_password invalid_password
  expect(login.get_password_field).to eq invalid_password
end

Then("I shouldn't be logged in and should get the error: your details are incorrect") do
  expect(login.get_errors).to eq error_message
end

When("I click on the profiles nav") do
  login.click_profiles_nav
end

Then("I should stay on the login page") do
  expect(current_url).to eq login_url
end
