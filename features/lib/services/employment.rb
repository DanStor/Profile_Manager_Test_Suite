require "capybara"

class Employment
  include Capybara::DSL

  COMPANY_LOCATOR = "company"
  ROLE_LOCATOR = "role"
  START_DATE_LOCATOR = "start-date"
  END_DATE_LOCATOR = "end-date"
  DETAILS_LOCATOR = "/html/body/div/div[2]/div/div/form/div[4]/trix-editor"

  VALID_BUSINESS = "A Business"
  VALID_ROLE = "A Role"

  VAILID_START_DATE = "27/08/2018"
  VALID_START_RETURN = "2018-08-27"

  VALID_END_DATE = "12/10/2018"
  VALID_END_RETURN = "2018-10-12"

  VALID_DETAILS = "I did some business things here. You would be impressed."

  def getCompanyRowAndName
    employments = find(".content-main").find_all("tr")
    row = employments[-2].find_all("td")
    @companyName = row[0].text
    puts @companyName
    return row
  end

  def getCompaniesTableLength
    find(".content-main").find_all("tr").length
  end

  def clickRowEdit row
    row[4].click_link("Edit")
  end

  # Takes 2 arrays
  # messages: the error messages present on the page
  # indexes: the index values of all the error messages that need to be checked against
  def errorMessagesPresent? messages, indexes
    count = indexes.length
    errors = [
      "Company is too short (minimum is 1 character)",
      "Company can't be blank",
      "Role is too short (minimum is 1 character)",
      "Role can't be blank",
      "Start date can't be blank",
      "Start date is not a valid date",
      "Start date is not a valid datetime",
      "Description can't be blank",
      "End date can't be blank",
      "Still employed can't be blank"
    ]

    messages.each do |message|
      indexes.each do |index|

        if message.text == errors[index]
          count -= 1
        end

        if count <= 0
          return true
        end

      end
    end

    return false
  end

  def enterValidDetails
    fill_in COMPANY_LOCATOR, with: VALID_BUSINESS
    fill_in ROLE_LOCATOR, with: VALID_ROLE
    fill_in START_DATE_LOCATOR, with: VAILID_START_DATE
    fill_in END_DATE_LOCATOR, with: VALID_END_DATE
    find(:xpath, DETAILS_LOCATOR).set(VALID_DETAILS)
  end

  def containsValidDetails?
    content = find(".content-main").find_all("p")

    case content
    when content[0] != "Start date: " + VALID_START_RETURN
      return false
    when content[1] != "End date " + VALID_END_RETURN
      return false
    when content[2] != "Company: " + VALID_BUSINESS
      return false
    when content[3] != "Role: " + VALID_ROLE
      return false
    when content[4] != "Description:"
      return false
    end

    if find(".content-main").find("div").text != VALID_DETAILS
      return false
    end

    return true

  end

  def preTestDatabase
    visit("/employments/new")
    enterValidDetails
    click_on("Save")
    click_on("Back")
  end

end
