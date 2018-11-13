require "capybara"

class Generic
  include Capybara::DSL

  def visitLoginPage
    visit("login")
  end

  def visitSections
    visit("sections")
  end

  def clickOnNewSection
    visit("sections/new")
  end

  def inputTextinNewSection text
    fill_in("title", :with => text)
  end

  def logInAsAdmin
    fill_in("email", :with => "eng16admin@spartaglobal.com")
    fill_in("password", :with => "Password123")
    click_on("submit")
  end

  def checkIfTitlePresent
    within(:css,".content-main") do
      find('p').text
    end
  end
end
