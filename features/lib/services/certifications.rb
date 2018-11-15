require "capybara"

class Certifications

  VALID_TITLE = "A title"
  VALID_DESCRIPTION = "A valid description"

  # > 100 characters
  INVALID_TITLE = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

  # > 100 words
  INVALID_DESCRIPTION = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in"

  DESCRIPTION_XPATH = "/html/body/div/div[2]/div/div/form/div[2]/trix-editor"

  WORD_COUNT_DISPLAY_XPATH = "/html/body/div/div[2]/div/div/form/div[2]/p"

  THREE_LETTER_WORDS = ["dog","cat","pig"]

  include Capybara::DSL

  def visit_certifications
    visit('/certifications')
  end

  def click_new_certification
    click_link("New Certification")
  end

  def input_valid_title
    fill_in('title', :with => VALID_TITLE)
  end

  def input_valid_description
    find(:xpath, DESCRIPTION_XPATH).set(VALID_DESCRIPTION)
  end

  def click_save
    click_button("save")
  end

  def get_notice_text
    find(".notice").text
  end

  def input_invalid_title
    fill_in('title', :with => INVALID_TITLE)
  end

  def input_invalid_description
    find(:xpath, DESCRIPTION_XPATH).set(INVALID_DESCRIPTION)
  end

  def error?
    within(:css, '#error_explanation') do
      find(:css, 'h2').visible?
    end
  end

  def add_word i
    path = find(:xpath, DESCRIPTION_XPATH)
    path.set("#{path.text} #{THREE_LETTER_WORDS[i]}")
  end

  def remove_word
    path = find(:xpath, DESCRIPTION_XPATH)

    (0..3).each do
      path.send_keys(:backspace)
    end

  end

  def get_word_count
    find(:xpath, WORD_COUNT_DISPLAY_XPATH).text.split(": ").last
  end

  def certificates_visible?
    find('#certification-index-table').visible?
  end

  def click_title title
    click_link(title)
  end

  def edit_title
    fill_in('title', :with => " - edited")
  end

  def edit_description
    find(:xpath, DESCRIPTION_XPATH).set(" - edited")
  end

  def input_edit_title title
    fill_in('title', :with => title)
  end

  def input_edit_description description
    find(:xpath, DESCRIPTION_XPATH).set(description)
  end

  def check_edit_title
    within(:css, 'td') do
      find('a', :text => " - edited").value
    end
  end

  def check_edit_description
    within(:css, '#description') do
      find('div', :text => " - edited").text
    end
  end

  def delete_certificate
    last_tr = all('tr')[-2]
    within(last_tr) do
      click_link('Destroy')
    end
  end

  def get_last_id
    last_tr = all('tr')[-2]
    within(last_tr) do
      find_link('Edit')[:id]
    end
  end

  def click_confirm
    click_button('Confirm')
  end

  def click_cancel
    click_button('Cancel')
  end
end
