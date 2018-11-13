require "capybara"

class Education
  include Capybara::DSL

  def visit_education_nav
    click_on(EDUCATION_NAV_ID)
  end

  def click_add_education
    click_on(NEW_BUTTON_ID)
  end


end
