require 'minitest/autorun'
require_relative '../../../helper'

class TestAuthNRailsVersion < MiniTest::Unit::TestCase
  def test_that_version_is_latest
    assert_equal "1.3.0", AuthN::Rails::VERSION
  end
end
