require "capybara"

class Profiles

  NEW_BUTTON_ID = 'new-button'
  SUMMARY_FIELD_ID = 'profile-form-summary'
  STREAM_FIELD_ID = 'profile_stream'
  DEGREE_FIELD_ID = 'profile-form-degree'
  SAVE_BUTTON = 'save-button'
  NO_DEGREE_BUTTON = 'profile-form-no-degree'

  def visit_profile_page
    visit('/profiles')
  end

  def click_create_profile
    click_on(NEW_BUTTON_ID)
  end

  def enter_summary summary
    fill_in(SUMMARY_FIELD_ID, with: summary)
  end

  def select_stream
    select('SDET', :from => STREAM_FIELD_ID)
  end

  def select_team
    #need to create function for select a team
  end

  def enter_degree degree
    fill_in(DEGREE_FIELD_ID, with: degree)
  end

  def click_on_modules
    #need to create function for select a team
  end

  def click_save_button
    click_button(SAVE_BUTTON)
  end

  def select_no_degree
    check(NO_DEGREE_BUTTON)
  end
end
