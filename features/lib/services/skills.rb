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


  # Scenario 3








  # Scenario 4
  def click_edit
    click_link('Edit')
  end

  def fill_in_skill_edited
    fill_in('skill[skills]', :with => 'Team Leader Edited')
  end
  # Scenario 5
  def delete_skill_button
    click_link('Destroy')
  end

  def confirm_delete
    click_button('Confirm')
  end
end
