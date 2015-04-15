require 'enumerable'
require 'minitest/autorun'
require 'minitest/unit'
require 'minitest/pride'

class TestHelper
  include Enumerable

  def self.empty_array
    new
  end

  private

  def initialize
  end
end