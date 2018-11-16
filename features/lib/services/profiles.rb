require "capybara"

class Profiles
  include Capybara::DSL

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



  def visit_home
    visit('/')
  end

  def visit_profile_page
    visit('/profiles')
  end

  def click_create_profile
    click_on(NEW_BUTTON_ID)
  end

  def enter_summary summary
    fill_in(SUMMARY_FIELD_ID, with: summary)
  end

  def get_summary_value
    find_field(SUMMARY_FIELD_ID).value
  end

  def select_stream
    select('BS Test Analyst', :from => STREAM_FIELD_ID).text
  end

  def select_team
    teamArray = find('#profile_team').all('option').collect(&:text)
    teamArray[-1]
  end

  def enter_degree degree
    fill_in(DEGREE_FIELD_ID, with: degree)
  end

  def get_degree_value
    find_field(DEGREE_FIELD_ID).value
  end

  def click_on_modules
    check(MODULE_ID)
  end

  def click_save_button
    click_on(SAVE_BUTTON)
  end

  def profile_created_message
    page.has_content?("*Profile was successfully created.")
  end

  def select_no_degree
    check(NO_DEGREE_BUTTON)
  end

  def degree_not_applicable
    page.has_content?("Not Applicable")
  end

  def confirm_delete_button
    click_on('Confirm')
  end

  def profile_link_not_available
    page.has_content?("*Profile was successfully destroyed.")
  end

  def delete_confirmation_message
    page.has_content?("Profile was successully destroyed.")
  end

  def click_cancel_button
    click_on('Cancel')
  end

  def profile_link_available
    #need to add code for this
  end

  def summary_error_message
    page.has_content?("Summary can't be blank")
  end

  def remove_words
    words = ""
    words = find_field('profile-form-summary').text
    p words.chop
  end

  def word_count
    #code needs to be added here if in future a word count is added
  end

  def click_edit_button
    click_on('Edit')
  end

  def degree_error_mesaage
    page.has_content?("Degree can't be blank")
  end

  def degree_short_error_mesaage
    page.has_content?("Degree is too short (minimum is 1 character)")
  end

  def click_PDF_link
    click_link('PDF')
    within_window(switch_to_window(windows.last))
  end


  def choose_pending
    choose(STATUS_PENDING)
  end

  def pending_status
    click_on("Back to Profiles")
    page.has_content?("Pending")
  end

  def choose_draft
    choose(STATUS_DRAFT)
  end

  def draft_status
    click_on("Back to Profiles")
    page.has_content?("Draft")
  end

  def delete_profile
    last_tr = all('tr')[-2]
    within(last_tr) do
      click_link('Delete')
    end
  end

  def get_last_id
    last_tr = all('tr')[-2]
    within(last_tr) do
      find_link('Edit')[:id]
    end
  end

end
