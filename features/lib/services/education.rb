require "capybara"

class Education
  include Capybara::DSL

  def visit_education_nav
    click_on(EDUCATION_NAV_ID)
  end

  def click_add_education
    click_on(NEW_BUTTON_ID)
  end

  def enter_institution institution
    find_field(INSTITUTION_FIELD_ID).send_keys(institution)
  end

  def get_institution_field
    find_field(INSTITUTION_FIELD_ID).value
  end

  def enter_course course
    fill_in(COURSE_FIELD_ID, with: course)
  end

  def get_course_field
    find_field(COURSE_FIELD_ID).value
  end

  def enter_start_date date
    fill_in(START_DATE_FIELD_ID, with: date)
  end

  def enter_end_date date
    fill_in(END_DATE_FIELD_ID, with: date)
  end

  def get_start_date_field
    find_field(START_DATE_FIELD_ID).value
  end

  def get_end_date_field
    find_field(END_DATE_FIELD_ID).value
  end

  def enter_description description
    find(:xpath, DESCRIPTION_FIELD_XPATH).send_keys(description)

  end

  def get_description_field
    find(:xpath, DESCRIPTION_FIELD_XPATH).value
  end

  def click_save_button
    click_button(SAVE_BUTTON_ID)
  end

  def get_notice
    find(NOTICE_CLASS).text
  end

  def visit_profile_nav
    click_on(PROFILES_NAV_ID)
  end

  def click_edit
    click_link('Edit')
  end

  def check_education_box option
    check(option)
  end

  def get_selected_education option
    find_field(option).checked?
  end

  def find_education option
    find('h4', :text => option).visible?
  end

  def click_destroy
    last_tr = all('tr')[-2]
    within(last_tr) do
      click_link('Destroy')
    end
  end

  def click_cancel
    click_button('Cancel')
  end

  def education_list link
    has_link?(link)
  end

  def click_confirm
    click_button('Confirm')
  end

  def get_errors
    find(ERRORS_ID).text.chars.first(2).join.to_i
  end

  def get_characters_remaining
    find(:xpath, INSTITUTION_CHAR_COUNT_XPATH).text.split(": ").last.to_i
  end

  def get_words_remaining
    find(:xpath, DESCRIPTION_WORD_COUNT_XPATH).text.split(": ").last.to_i
  end

  def get_last_id
    last_tr = all('tr')[-2]
    within(last_tr) do
      find_link('Edit')[:id]
    end
  end
end
