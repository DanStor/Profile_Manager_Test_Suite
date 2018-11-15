require "capybara"

class HeaderAndFooter
  include Capybara::DSL

  # Scenario 1
  def log_in_page
    visit('/login')
  end

  def sparta_global_sign
    click_link('Sparta Global')
  end

  def click_profiles
    click_link('Profiles')
  end

  def click_skills
    click_link('Skills')
  end

  def click_projects
    click_link('Projects')
  end

  def click_employment
    click_link('Employment')
  end

  def click_education
    click_link('Education')
  end

  def click_certifications
    click_link('Certifications')
  end

  def click_custom_sections
    click_link('Custom Sections')
  end

  def click_log_in
    click_link('Login')
  end

  # Scenario 2
  def check_logged_in
    page.has_content? ("Welcome , eng16 student")
  end

  def sparta_global_sign_click
    page.has_content? ("Sparta Global")
  end
  # Scenario 3


  # Scenario 4


  # Scenario 5


  # Scenario 6


  # Scenario 7


  # Scenario 8


  # Scenario 9


  # Scenario 10


  # Scenario 11


  # Scenario 12


  # Scenario 13


  # Scenario 14


  # Scenario 15


  # Scenario 16


  # Scenario 17


  # Scenario 18


  # Scenario 19 - Not in Step-Defs- Dont Need


  # Scenario 20


  # Scenario 21


  # Scenario 22


end
