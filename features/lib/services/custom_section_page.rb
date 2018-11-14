require 'capybara'

class CustomSectionPage
  include Capybara::DSL

  def visit_custom_section_page
    visit('/customs')
  end

  def click_custom_section name
    click_on(name)
  end

  def click_new_custom_section
    click_on('New Custom Section')
  end

  def find_custom_section name
    find_link(name).visible?
  end

  def check_custom_section name
    has_link?(name)
  end

  def find_notice_message
    find(:css, '.notice').text
  end

  def destroy_section name
    titles = all(:css ,'tr td')
    n=titles.length
    i=0
    while i<n do
      if titles[i].text == name
        puts titles[i].text
        click_on(find("a[data-id=destroy-#{i/3}]").text)
        break
      end
      i+=3
    end
  end

  def click_confirm
    click_button('Confirm')
  end

  def click_cancel
    click_button('Cancel')
  end

  #=================== FORM METHODS ================================
  def input_title title
    fill_in('title', :with => title)
  end

  def input_heading heading
    fill_in('heading', :with => heading)
  end

  def input_body body
    fill_in('body', :with => body)
  end

  def click_save
    click_on('save-button')
  end

end
