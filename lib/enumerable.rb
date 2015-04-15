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

  def count *args
    count = 0
    each do |element|
      if args.count > 0
        count += 1 if element == args.first
      else
        count += 1
      end
    end
    count
  end
end
