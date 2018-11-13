require "capybara"

class Education
  include Capybara::DSL

  EDUCATION_NAV_ID = 'header-education'
  NEW_BUTTON_ID = 'new-button'

  def visit_education_nav
    click_on(EDUCATION_NAV_ID)
  end

  def click_add_education
    click_on(NEW_BUTTON_ID)
  end


end
