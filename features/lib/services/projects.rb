require "capybara"

class Projects
  include Capybara::DSL

  def visit_homepage
    visit('/')
  end

  def click_projects_tab
    click_link('Projects')
  end

  def click_new_project
    click_link('Create Project')
  end

  def fill_in_title
    fill_in('title', :with => 'ISTQB')
  end

  def fill_in_description
    find(:xpath, '/html/body/div/div[2]/div/div/form/div[2]/trix-editor').set("This is some description")
  end

  def valid_input_start_date
    fill_in('start-date', :with => '01/09/2014')
  end

  def valid_input_end_date
    fill_in('end-date', :with => '01/10/2014')
  end

  def save
    click_button('Save')
  end

  def check_if_project_added
    find('.notice').text
  end

  def check_if_has_10_errors
    page.has_content?('10 errors prohibited this project from being saved:')
  end

  def click_edit_profile
    click_link('Edit')
  end

  def edit_details
    fill_in("title", :with => "PRINCE2")
    find(:xpath, '/html/body/div/div[2]/div/div/form/div[2]/trix-editor').set("This is an edited description")
    fill_in("start-date", :with => "01/09/2018")
    fill_in("end-date", :with => "01/10/2018")
  end

  def get_title word
    find(:xpath, "/html/body/div/div[2]/p[1]").has_content?(word)
  end

  def get_description words
    find(:xpath, "/html/body/div/div[2]/div").has_content?(words)
  end

  def get_startDate date
    find(:xpath, "/html/body/div/div[2]/p[4]").has_content?(date)
  end

  def get_endDate date
    find(:xpath, "/html/body/div/div[2]/p[5]").has_content?(date)
  end

  def profile_checkbox
    check('profile_project_ids_1')
  end

end
