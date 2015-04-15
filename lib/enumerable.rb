require "enumerable/version"

module Enumerable
  def all?
    each { |element| return false unless yield element }
    true
  end

  def any?
    each { |element| return true if yield element }
    false
  end

  def count
    count = 0
    each { |_| count += 1 }
    count
  end
end
