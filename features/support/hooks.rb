Before("@certification") do
  visit('/')
  sign_in.sign_in_student

  @certificate_added_message = "*Certification was successfully created."

  @edit_title_text = "TITLE EDITED"
  @edit_description_text = "DESCRIPTION EDITED"

  @too_many_words_error = "Too many words"

  sleep 1
end

Before("@certification_invalid_description") do
  visit('/')
  sign_in.sign_in_student

  @certificate_added_message = "*Certification was successfully created."

  @too_many_words_error = "Too many words"
  sleep 1
end

Before("@certification_word_count_decrease") do
  visit('/')
  sign_in.sign_in_student

  @certificate_added_message = "*Certification was successfully created."
  sleep 1
end

Before("@certification_word_count_increase") do
  visit('/')
  sign_in.sign_in_student

  @certificate_added_message = "*Certification was successfully created."
  sleep 1
end

Before("@certification_view") do
  visit('/')
  sign_in.sign_in_student

  @certificate_added_message = "*Certification was successfully created."
  sleep 1
end

Before("@certification_edit") do
  visit('/')
  sign_in.sign_in_student

  @certificate_added_message = "*Certification was successfully created."

  @edit_title_text = "TITLE EDITED"
  @edit_description_text = "DESCRIPTION EDITED"

  sleep 1
end

Before("@certification_delete") do
  visit('/')
  sign_in.sign_in_student

  @certificate_added_message = "*Certification was successfully created."
  sleep 1
end


After("@certification") do
  sleep 2
end

Before("@education") do
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

  visit('/')
  sign_in.sign_in_student
end

Before("@profiles") do
  visit('/')
  sign_in.sign_in_student
  sleep 2
end


Before("@skills") do
  visit('/')
  sign_in.sign_in_student
  sleep 2
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

Before('@login') do
  EMAIL_FIELD_ID = 'email'
  PASSWORD_FIELD_ID = 'password'
  SUBMIT_BUTTON_ID = 'submit'
  WELCOME_XPATH = '/html/body/div/nav/ul/li[1]/a'
  NOTICE_CLASS = '.notice'
end
