require "capybara"

class Certifications

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

  def input_edit_title title
    fill_in('title', :with => title)
  end

  def input_edit_description description
    find(:xpath, DESCRIPTION_XPATH).set(description)
  end

  def click_last_edit
    last_tr = all('tr')[-2]
    within(last_tr) do
      find_link('Edit').click
    end
  end

  def check_edit_title
    last_tr = all('tr')[-2]
    within(last_tr) do
      find('a', :text => /.*/).text
    end
  end

  def check_edit_description
    last_tr = all('tr')[-2]
    within(last_tr) do
      find('div', :text => /.*/).text
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

  def get_last_id_formatted
    get_last_id.split("n").last
  end

  def click_confirm
    click_button('Confirm')
  end

  def click_cancel
    click_button('Cancel')
  end

  def paste_invalid

    text_to_set = INVALID_DESCRIPTION

    element = find(:xpath, DESCRIPTION_XPATH) # however you locate the element
    execute_script('arguments[0].value = arguments[1]', element, text_to_set)
  end

  def click_last_title
    last_tr = all('tr')[-2]
    within(last_tr) do
      find(:id => /title-.*/).click
    end
  end

end
