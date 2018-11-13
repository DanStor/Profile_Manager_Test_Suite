require_relative "services/homepage.rb"
require_relative "services/employment.rb"

module PMTesting

  def employment
    Employment.new 
  end

end
