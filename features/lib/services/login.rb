require "capybara"

class Login
  include Capybara::DSL


  def enter_email email
    fill_in(EMAIL_FIELD_ID, with: email)
  end

  def get_email_field
    find_field(EMAIL_FIELD_ID).value
  end

  def enter_password password
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def get_password_field
    find_field(PASSWORD_FIELD_ID).value
  end

  def click_submit
    click_button(SUBMIT_BUTTON_ID)
  end

  def get_welcome
    find(:xpath, WELCOME_XPATH).text
  end

  def get_errors
    find(NOTICE_CLASS).text
  end

  def click_profiles_nav
    click_link('header-profiles')
  end

end
