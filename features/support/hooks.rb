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
