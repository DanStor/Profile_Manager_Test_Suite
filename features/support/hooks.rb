Before('@all') do
  visit('/')
  fill_in('email', :with => 'eng16student@spartaglobal.com')
  fill_in('password', :with => 'Password123')
  click_button('submit')
end

Before('@valid_custom_form') do
  TITLE = "Test Title"
  HEADING = "Charity"
  BODY = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
  CUSTOM_CREATED_MESSAGE = "*Custom was successfully created."
end

Before('@delete') do
  DELETED_MESSAGE = "*Custom was successfully destroyed."
  TITLE = "Test Title"
end
