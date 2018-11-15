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


  # Scenario 16


  # Scenario 17


  # Scenario 18


  # Scenario 19 - Not in Step-Defs- Dont Need


  # Scenario 20


  # Scenario 21


  # Scenario 22


end
