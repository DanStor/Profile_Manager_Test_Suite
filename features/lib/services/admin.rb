require 'capybara'

class Admin
  include Capybara::DSL

  def visit_login
    visit('/')
  end
  def log_in_email
    fill_in('email', with: 'eng16admin@spartaglobal.com')
  end

  def submit
    click_button('submit')
  end

  def log_in_password
    fill_in('password', with: 'Password123')
  end

  def create_profile_button
    click_link('new-button')
  end

  def drop_down_menu
    select('Team two', :from => 'profile_team')
  end

  def profile_delete_button
    click_link('Delete')
  end

  def profile_delete_button_confirm
    click_button('Confirm')
  end

  def profile_removed
    # click_link('profile-index-stream-1')
    find('.notice').text
  #   if find_link('profile-index-stream-1').visible?
  #     false
  #   end
  #   return true
  end
end
