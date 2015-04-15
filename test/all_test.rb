require 'test_helper'

class AllTest < MiniTest::Unit::TestCase
  def test_that_the_empty_array_returns_true
    assert TestHelper.empty_array.any?
  end
end