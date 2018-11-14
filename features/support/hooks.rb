Before("@certification") do
  visit('/')
  sign_in.sign_in_student
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
