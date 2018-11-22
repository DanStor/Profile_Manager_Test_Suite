require "capybara"

class Skills
  include Capybara::DSL

  # Scenario 1
  def visit_homepage
    visit('/')
  end

  def click_skills_tab
    click_link('Skills')
  end

  def create_new_skill
    click_link('Create Skill')
  end

  def fill_in_skill
    fill_in('skill[skills]', :with => 'Team Leader')
  end

  def click_save
    click_on('Save')
  end

  def get_notice
    find('.notice').text
  end

  # Scenario 2
  def visit_login
    visit("http://localhost:3000/login")
  end

  def click_skills
    click_on('Skills')
  end

  def click_profiles
    click_on("Profiles")
  end

  def click_new_profile
    click_on("Create a profile")
  end

  def input_profile_details
    fill_in("profile-form-summary", :with => "Mock Profile")
    fill_in("profile-form-degree", :with => "Computing")
    # all("profile[skill_ids][]").last.set(true)
    form = all(".form-group")[5]
    within(form) do
      checkbox = all("checkbox")[-1]
      end

  end

  def click_save
    find(:xpath, "//*[@id='save-button']").click
  end

  def click_edit_profile
    click_on("Edit")
  end

  def click_on_skill
    find('label', text: 'Team Leader').click
  end

  def expect_skill
    has_content?("Team Leader")
  end

  # Scenario 3
  def create_skill
      click_link('Create Skill')
  end

  def input_blank_skill
    click_button('save-button')
  end

  def empty_skill_error
    page.has_content? ('2 errors prohibited this skill from being saved:')
  end

  # Scenario 5
  def delete_skill_button
    click_link('Destroy')
  end

  def confirm_delete
    click_on('Confirm')
  end
end
