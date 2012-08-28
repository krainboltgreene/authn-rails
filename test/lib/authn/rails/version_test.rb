require 'minitest/autorun'
require_relative '../../../helper'

class TestAuthNRailsVersion < MiniTest::Unit::TestCase
  def setup
    # Setup logic here
  end

  def test_that_version_is_latest
    assert_equal "1.0.0", AuthN::Rails::VERSION
  end
end
