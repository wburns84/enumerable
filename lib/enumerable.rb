require "enumerable/version"

module Enumerable
  def any?
    each { |element| return yield element }
    true
  end
end
