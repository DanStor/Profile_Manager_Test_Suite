require "capybara"

class Certifications

  include Capybara::DSL

  def visit_certifications
    visit('/certifications')
    sleep(2)
  end
end
