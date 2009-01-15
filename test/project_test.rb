require File.join(File.dirname(__FILE__), 'test_helper')

class ProjectTest < Test::Unit::TestCase
  before :all do
    Frailty.load_projects :sample
  end

end