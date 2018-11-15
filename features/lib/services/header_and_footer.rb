require "capybara"

class HeaderAndFooter
  include Capybara::DSL

  # Scenario 1


  # Scenario 2


  # Scenario 3


  # Scenario 4


  # Scenario 5


  # Scenario 6


  # Scenario 7


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
  def click_top_left_sparta_logo
    find(:xpath, '/html/body/div/nav/div[1]/a').click
  end

  # Scenario 19 - Not in Step-Defs- Dont Need


  # Scenario 20
  def click_sections
    find("#header-sections").click
  end

  # Scenario 21
  def click_teams
    find("a", :text => /\ATeams\z/).click
  end


  # Scenario 22


end
