require "capybara"

class Skills
  include Capybara::DSL

  # Scenario 1


  # Scenario 2


  # Scenario 3

  def visit_skills
    visit('/skills')
  end

  def create_skill
    click_button('new-button')
  end

  def input_blank_skill
    click_button('save-button')
  end
end
