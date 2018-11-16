require "capybara"

class Generic
  include Capybara::DSL

  def visitLoginPage
    visit("login")
  end

  def visitSections
    visit("sections")
  end

  def visitProfiles
    visit("profiles")
  end

  def clickOnNewSection
    visit("sections/new")
  end

  def inputTextinNewSection text
    fill_in("title", :with => text)
  end

  def logIn email
    fill_in("email", :with => email)
    fill_in("password", :with => "Password123")
    click_on("submit")
  end

  def checkIfTitleIsHobbies
    within(:css,".content-main") do
      find('p').text
    end
  end

  def saveNewSection
    click_on("Save")
  end

  def deleteSection
    click_on("Back")
    find(:css, "#delete-Hobbies").click
    click_on("Confirm")
  end

  def checkIfLinkCorrect linktext
    if find('a', text: linktext, exact: true)
      return true
    else
      return false
    end
  end

  def openPDFOfProfile
    click_on("PDF")
    within_window(switch_to_window(windows.last))
  end

end
