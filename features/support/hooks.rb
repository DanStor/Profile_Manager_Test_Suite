Before("@certification") do
  visit('/')
  sign_in.sign_in_student

  @certificate_added_message = "*Certification was successfully created."
  sleep 1
end

Before("@certification_invalid_description") do
  visit('/')
  sign_in.sign_in_student

  @certificate_added_message = "*Certification was successfully created."
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
  @certificate_edit_message = " - edited"
  sleep 1
end

Before("@certification_delete") do
  visit('/')
  sign_in.sign_in_student

  @certificate_added_message = "*Certification was successfully created."
  @certificate_edit_message = " - edited"
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

  visit('/')
  sign_in.sign_in_student
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
