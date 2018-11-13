require "capybara"

class Certifications

  def visit_certifications
    visit('/certifications')
    sleep(2)
  end
end
