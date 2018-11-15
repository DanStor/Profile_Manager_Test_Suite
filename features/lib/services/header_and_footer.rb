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


  # Scenario 9


  # Scenario 10


  # Scenario 11


  # Scenario 12


  # Scenario 13


  # Scenario 14


  # Scenario 15
  def visit_website
    visit("http://localhost:3000")
  end

  def click_linkedin
    find(:xpath, "/html/body/footer/div/div[3]/div/a[3]/i").click
    within_window(switch_to_window(windows.last)) do
      puts current_url
    end
  end

  # Scenario 16


  # Scenario 17


  # Scenario 18


  # Scenario 19 - Not in Step-Defs- Dont Need


  # Scenario 20


  # Scenario 21


  # Scenario 22


end
