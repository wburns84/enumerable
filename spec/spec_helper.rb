require 'enumerable'
require 'minitest/autorun'
require 'minitest/pride'

class SpecHelper
  include Enumerable

  def self.empty_array
    new
  end

  def self.for elements
    new elements
  end

  def each
    @elements.each { |element| yield element }
  end

  private

  def initialize elements = []
    @elements = elements
  end
end