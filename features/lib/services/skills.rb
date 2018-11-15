require "capybara"

class Skills
  include Capybara::DSL

  # Scenario 1


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
    find(:css, "#profile_section_ids_3").set(true)
  end

  def click_save
    find(:xpath, "//*[@id='save-button']").click
  end

  def click_edit_profile
    click_on("Edit")
  end

  def click_on_skill
    find("Java").click
  end

  def expect_skill
    has_content?("Java")
  end

  # Scenario 3

end
