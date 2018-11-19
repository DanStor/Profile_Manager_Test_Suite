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
    select('testing team', :from => 'profile_team')
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
  def team_name name
    fill_in('team_team', with: name)
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

  def filter_teams name
    select(name, :from => 'team')
  end
  def filter_a_team name
    select(name, :from => 'profile[team]')
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

# Scenario 13
  def destroy_last_section
    all("a", :text => /\Destroy\z/).last.click
  end

  def click_confirm
    click_on("Confirm")
  end

# Scenario 14
  def edit_last_section
    all("a", :text => /Edit\z/).last.click
  end

  def change_info
    fill_in("title", :with => "Changed Title")
    find(:xpath, '/html/body/div/div[2]/div/div/form/div[2]/trix-editor').set("Changed Description")
    find(:xpath, "//*[@id='skills']").set("ruby,java,html")
  end

  def check_title
    has_content?("Title")
  end

  def check_description
    has_content?("Changed Description")
  end

  def check_skills
    has_content?("ruby,java,html")
  end

  def click_edit
    click_on('Edit')
  end

  def log_out
    click_on('Logout')
  end

  def filtered_name
    find_link('Anne Cooke').visible?
  end

end
