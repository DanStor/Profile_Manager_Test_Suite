require "capybara"

class Education

  NEW_BUTTON_ID = 'new-button'

  def visit_education_page
    visit('/educations')
  end

  def click_add_education
    click_on(NEW_BUTTON_ID)
  end

  
end
