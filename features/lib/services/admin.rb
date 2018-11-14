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


# Scenario 7
  def click_profiles_status
    find(:css, "#status").click
  end

  def click_draft_option
    select "Draft", :from => "status"
  end

  def isOnlyDraft
    within "#approved" do
      if has_css?(".Approved")
        return false
      elsif has_css?(".Rejected")
        return false
      elsif has_css?(".Pending")
        return false
      elsif has_css?(".Draft")
        return true
      end
    end
  end

# Scenario 8
  def click_on_profile
    within "#approved" do
      within ".name" do
        find("a").click
      end
    end
  end

  def click_on_comments
    click_button("Comments")
  end

  def checkCommentPresent
    has_content?("text")
  end

# Scenario 9

  def click_pending_option
    select "Pending", :from => "status"
  end

  def isOnlyDraftAndPending
    incorrect = true
    within "#approved" do
      if has_css?(".Approved")
        incorrect = false
      elsif has_css?(".Rejected")
        incorrect = false
      end
    end
    return incorrect
  end

end
