require "capybara"

class Employment
  include Capybara::DSL

  def cabbage
    visit("/")
  end

end
