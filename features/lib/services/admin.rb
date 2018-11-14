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

#_____Scenario 1_____
  def create_profile_button
    click_link('new-button')
  end

  def drop_down_menu
    select('Team two', :from => 'profile_team')
  end
#_____Scenario 2_____
  def profile_delete_button
    click_link('Delete')
  end

  def profile_delete_button_confirm
    click_button('Confirm')
  end

  def profile_removed
    find('.notice').text
  end

#_____Scenario 3_____
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

#_____Scenario 4_____
  def destroy_team
    click_link('Destroy')
  end

  def confirm_team_destroy
    click_button('Confirm')
  end

#_____Scenario 5_____
  def confirm_admin_login
    find_link('Welcome , eng16 admin (Admin)').visible?
  end

  def visit_profile_page
    visit('/profiles')
  end

  def filter_teams
    select('testing team 1', :from => 'team')
  end

# _____ Scenario 6 _____
  def profiles_page
    click_link('Profiles')
  end

  def status_drop_down
    select('Status', :from => 'status')
  end

  def pending_drop_down
    select('Pending', :from => 'status')
  end

  def show_pending_profiles
    within "#approved" do
      if has_css?(".Approved")
        return false
      elsif has_css?(".Rejected")
        return false
      elsif has_css?(".Draft")
        return false
      else (".Pending")
        return true
      end
    end
  end


# Scenario 10
  def drop_down_menu_status
    select('Draft', :from => 'status')
  end


end
