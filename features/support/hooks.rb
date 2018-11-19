Before("@certifications") do
  VALID_TITLE = "A title"

  VALID_DESCRIPTION = "A valid description"

  # > 100 characters
  INVALID_TITLE = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

  # > 100 words
  INVALID_DESCRIPTION = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in"

  DESCRIPTION_XPATH = "/html/body/div/div[2]/div/div/form/div[2]/trix-editor"

  WORD_COUNT_DISPLAY_XPATH = "/html/body/div/div[2]/div/div/form/div[2]/p"

  THREE_LETTER_WORDS = ["dog","cat","pig"]

end

Before("@certification") do

  visit('/')
  sign_in.sign_in_student

  @certificate_added_message = "*Certification was successfully created."

  @edit_title_text = "TITLE EDITED"
  @edit_description_text = "DESCRIPTION EDITED"

  @too_many_words_error = "Too many words"


  # sleep 1
end

Before("@certification_invalid_description") do
##
end

Before("@certification_invalid_title") do
  ##
end

Before("@certification_word_count_decrease") do
##
end

Before("@certification_word_count_increase") do
##
end

Before("@certification_view") do
##
end

Before("@certification_edit") do
##
end

Before("@certification_delete") do
  pm_certifications.visit_certifications
  pm_certifications.click_new_certification
  pm_certifications.input_valid_title
  pm_certifications.input_valid_description
  pm_certifications.click_save
end


After("@certification") do
##
end

Before("@all_education") do
  EDUCATION_NAV_ID = 'header-education'
  NEW_BUTTON_ID = 'new-button'
  INSTITUTION_FIELD_ID = 'institution'
  COURSE_FIELD_ID = 'course'
  START_DATE_FIELD_ID = 'start-date'
  END_DATE_FIELD_ID = 'end-date'
  DESCRIPTION_FIELD_XPATH = '/html/body/div/div[2]/div/div/form/div[4]/trix-editor'
  SAVE_BUTTON_ID = 'save-button'
  NOTICE_CLASS = '.notice'
  PROFILES_NAV_ID = 'header-profiles'
  ERRORS_ID = '#error_explanation'
  INSTITUTION_CHAR_COUNT_XPATH = '/html/body/div/div[2]/div/div/form/div[1]/p'
  DESCRIPTION_WORD_COUNT_XPATH = '/html/body/div/div[2]/div/div/form/div[4]/p'

end

Before("@education") do

  visit('/')
  sign_in.sign_in_student
end

Before("@profiles") do
  NEW_BUTTON_ID = 'new-button'
  SUMMARY_FIELD_ID = 'profile-form-summary'
  STREAM_FIELD_ID = 'Stream'
  SELECT_TEAM = "profile_team"
  DEGREE_FIELD_ID = 'profile-form-degree'
  MODULE_ID = "profile_section_ids_2"
  SAVE_BUTTON = 'save-button'
  NO_DEGREE_BUTTON = 'profile-form-no-degree'
  STATUS_PENDING = 'profile_status_pending'
  STATUS_DRAFT = 'profile_status_draft'
  TEAM_LABEL = 'Team'
end


Before("@skills") do
  visit('/')
  sign_in.sign_in_student
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

Before('@custom_form') do
  TITLE = "Test Title"
  HEADING = "Charity"
  BODY = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
  CUSTOM_CREATED_MESSAGE = "*Custom was successfully created."
  DELETED_MESSAGE = "*Custom was successfully destroyed."
  UPDATED_MESSAGE = "*Custom was successfully updated."
  CUSTOM_CREATED_MESSAGE = "*Custom was successfully created."
end

Before("@education_requires_created") do
  valid_institution = 'Exeter University'
  valid_course = 'Engineering'
  valid_start_date = '01/09/2014'
  valid_end_date = '01/06/2018'
  description = 'This is a description'

  pm_education.visit_education_nav
  pm_education.click_add_education
  pm_education.enter_institution valid_institution
  pm_education.enter_course valid_course
  pm_education.enter_start_date valid_start_date
  pm_education.enter_end_date valid_end_date
  pm_education.enter_description description
  pm_education.click_save_button
end

Before("@education_destroy") do
  valid_institution = 'Exeter University'
  valid_course = 'Engineering'
  valid_start_date = '01/09/2014'
  valid_end_date = '01/06/2018'
  description = 'This is a description'

  pm_education.visit_education_nav
  pm_education.click_add_education
  pm_education.enter_institution valid_institution
  pm_education.enter_course valid_course
  pm_education.enter_start_date valid_start_date
  pm_education.enter_end_date valid_end_date
  pm_education.enter_description description
  pm_education.click_save_button
end

After("@education_delete_education") do
    pm_education.visit_education_nav
    pm_education.click_destroy
    pm_education.click_confirm
end

Before("@all_login") do
  EMAIL_FIELD_ID = 'email'
  PASSWORD_FIELD_ID = 'password'
  SUBMIT_BUTTON_ID = 'submit'
  WELCOME_XPATH = '/html/body/div/nav/ul/li[1]/a'
  NOTICE_CLASS = '.notice'
end

Before("@deletion") do
  employment.preTestDatabase
end

Before('@login') do

end
