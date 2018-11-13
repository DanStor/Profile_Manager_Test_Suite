require_relative "services/homepage.rb"
require_relative "services/generic.rb"

module PMTesting

  def generic
    Generic.new
  end

  def admin
    Admin.new
  end

end
