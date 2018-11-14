require 'capybara'

class Admin
  include Capybara::DSL

  def visit_login
    visit('/')
  end

  def admin_log_in_email
    fill_in('email', with: 'eng16admin@spartaglobal.com')
  end

  def log_in_password
    fill_in('password', with: 'Password123')
  end

  def submit
    click_button('submit')
  end

# Scenario 1
  def create_profile_button
    click_link('new-button')
  end

  def drop_down_menu
    select('Team two', :from => 'profile_team')
  end
# Scenario 2
  def profile_delete_button
    click_link('Delete')
  end

  def profile_delete_button_confirm
    click_button('Confirm')
  end

  def profile_removed
    find('.notice').text
  end

# Scenario 3
  def add_group_as_admin
    click_link('Teams')
  end

  def create_new_group
    click_link('New Team')
  end

  def new_team_name
    fill_in('team_team', with: 'testing team')
  end

  def click_create_team
    click_button('Create Team')
  end

  def check_message
    find('.notice').text
  end

# Scenario 4
  def destroy_team
    click_link('Destroy')
  end

  def confirm_team_destroy
    click_button('Confirm')
  end

  # Scenario 5
  def confirm_admin_login
    click_link('Welcome , eng16 admin (Admin)')
  end

# Scenario 10
  def drop_down_menu_status
    select('Draft', :from => 'status')
  end

  def show_all_draft_status
    page.has_content?('Draft')
  end

  # Scenario 11
  def click_sections_link
    click_link('Sections')
  end

  def click_new_section
    click_link('New Section')
  end

  def fill_in_new_section
    fill_in('title', with: 'New Section')
    find(:xpath, '/html/body/div/div[2]/div/div/form/div[2]/trix-editor').set("This description is for a new section which is being added")
    fill_in('skills', with: 'There are many skills to master')
  end

  def fill_in_new_section_blank
    fill_in('title', with: '')
    find(:xpath, '/html/body/div/div[2]/div/div/form/div[2]/trix-editor').set("")
    fill_in('skills', with: '')
  end

  def save_new_section
    click_button('Save')
  end

  def check_if_section_added
    find('.notice').text
  end

end
