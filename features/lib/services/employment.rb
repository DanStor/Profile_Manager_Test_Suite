require "capybara"

class Employment
  include Capybara::DSL

  def getCompanyRowAndName
    employments = find(".content-main").find_all("tr")
    row = employments[-2].find_all("td")
    @companyName = row[0].text
    puts @companyName
    return row
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

end
