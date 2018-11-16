require "capybara"

class HeaderAndFooter
  include Capybara::DSL

  # Scenario 1
  def log_in_page
    visit('/')
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
    click_link("Sparta Global")
  end

  def directed_to_profiles
    page.has_content?('Profiles')
  end
  # Scenario 3

  def click_profile_header
    click_link('Profiles')
  end
  # Scenario 4

  def click_skills_header
    click_link('Skills')
  end
  # Scenario 5

  def click_projects_header
    click_link('Projects')
  end

  # Scenario 6

  def click_employment_header
    click_link('Employment')
  end
  # Scenario 7

  def click_education_header
    click_link('Education')
  end

  # Scenario 8
  def click_certifications
    click_link('Certifications')
  end

  # Scenario 9
  def click_customs_section
    click_link('Custom Sections')
  end

  # Scenario 10
  def click_welcome_name
    click_link('Welcome , ')
  end

  # Scenario 11
  def log_out
    click_link('Logout')
  end

  # Scenario 12
  def click_sparta_logo
    find(:xpath, '/html/body/footer/div/div[1]/a[1]/img').click
  end

  # Scenario 13
  def click_instagram_logo
    find(:xpath, '/html/body/footer/div/div[3]/div/a[5]/i').click
    sleep 2
    within_window(switch_to_window(windows.last))
  end

  # Scenario 14
  def click_twitter_logo
    find(:xpath, '/html/body/footer/div/div[3]/div/a[4]/i').click
    sleep 2
    within_window(switch_to_window(windows.last))
  end

  # Scenario 15
  def visit_website
    visit("http://localhost:3000")
  end

  def click_linkedin
    find(:xpath, "/html/body/footer/div/div[3]/div/a[3]/i").click
    sleep 2
    within_window(switch_to_window(windows.last))
  end

  # Scenario 16
  def click_fb
    find(:xpath, "/html/body/footer/div/div[3]/div/a[2]/i").click
    sleep 2
    within_window(switch_to_window(windows.last))
  end

  # Scenario 17
  def click_github
    find(:xpath, "/html/body/footer/div/div[3]/div/a[1]/i").click
    sleep 2
    within_window(switch_to_window(windows.last))
  end


  # Scenario 18


  # Scenario 19 - Not in Step-Defs- Dont Need


  # Scenario 20


  # Scenario 21


  # Scenario 22


end
