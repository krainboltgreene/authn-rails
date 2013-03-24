require "coveralls"
Coveralls.wear! do
  add_filter "/test/"
end
require "minitest/autorun"
require "authn-rails"
require "pry"

class TestCase < MiniTest::Unit::TestCase

end
