require "capybara"

class Profiles

  NEW_BUTTON_ID = 'new-button'
  SUMMARY_FIELD_ID = 'profile-form-summary'
  STREAM_FIELD_ID = 'profile_stream'
  SELECT_TEAM = "profile_team"
  DEGREE_FIELD_ID = 'profile-form-degree'
  SAVE_BUTTON = 'save-button'
  NO_DEGREE_BUTTON = 'profile-form-no-degree'
  STATUS_PENDING = 'profile_status_pending'
  STATUS_DRAFT = 'profile_status_draft'

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
    SELECT_TEAM.all(select())
  end

  def enter_degree degree
    fill_in(DEGREE_FIELD_ID, with: degree)
  end

  def click_on_modules
    #need to create function for select a team
  end

  def click_save_button
    click_on(SAVE_BUTTON)
  end

  def profile_created
    #need to add code here
  end

  def select_no_degree
    check(NO_DEGREE_BUTTON)
  end

  def degree_not_applicable
    page.has_content?("Not Applicable")
  end

  def delete_profile_button
    click_link('Delete')
  end

  def confirm_delete_button
    click_link('confirm')
  end

  def profile_link_not_available
    #need to add code here
  end

  def delete_confirmation_message
    page.has_content?("Profile was successully destroyed.")
  end

  def click_cancel_button
    click_link('Cancel')
  end

  def profile_link_available
    #need to add code for this
  end

  def click_PDF_link
    click_link('PDF')
  end

  def pdf_page
    #need to add code for this
  end

  def choose_pending
    choose(STATUS_PENDING)
  end

  def pending_status
    page.has_content?("Pending")
  end

  def choose_draft
    choose(STATUS_DRAFT)
  end

  def draft_status
    page.has_content?("Draft")
  end

end
