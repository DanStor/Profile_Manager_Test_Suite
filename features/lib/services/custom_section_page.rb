require 'capybara'

class CustomSectionPage
include Capybara::DSL

def visit_custom_section_page
  visit('/customs')
end
def click_custom_section name
  click_on(name)
end
def click_new_custom_section
  click_on('New Custom Section')
end

#=================== FORM METHODS ================================
  def input_title title
    fill_in('title', :with => title)
  end
  def input_heading heading
    fill_in('heading', :with => heading)
  end
  def input_body body
    fill_in('body', :with => body)
  end

  def click_save
    click_on('save-button')
  end
end
