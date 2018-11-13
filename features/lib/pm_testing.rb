require_relative "services/homepage.rb"
require_relative "services/employment.rb"
require_relative "services/custom_section_page.rb"

module PMTesting

  def custom_section_page
    CustomSectionPage.new
  end

  def employment
    Employment.new
  end

end
