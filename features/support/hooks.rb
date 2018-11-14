Before("@certification") do
  visit('/')
  sign_in.sign_in_student
  sleep 2
end

Before("@education") do
  visit('/')
  sign_in.sign_in_student
  sleep 2
end

Before("@profiles") do
  visit('/')
  sign_in.sign_in_student
  sleep 2
end

Before("@projects") do
  visit('/')
  sign_in.sign_in_student
  sleep 2
end

Before("@skills") do
  visit('/')
  sign_in.sign_in_student
  sleep 2
end

Before("@danRhys") do
  visit('/')
  sign_in.sign_in_student
  sleep 2
end

Before('@all') do
  visit('/')
  fill_in('email', :with => 'eng16student@spartaglobal.com')
  fill_in('password', :with => 'Password123')
  click_button('submit')
end

Before('@valid_custom_form') do
  TITLE = "Volunteering"
  HEADING = "Charity"
  BODY = "I was doing some charity work bro"
  CUSTOM_CREATED_MESSAGE = "*Custom was successfully created."
end
