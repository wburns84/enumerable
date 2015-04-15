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
      if block_given?
        count += 1 if yield element
      elsif args.count > 0
        count += 1 if element == args.first
      else
        count += 1
      end
    end
    count
  end

  def first *args
    if args.count > 0
      remaining = args.first
      to_return = []
      each do |element|
        break if remaining == 0
        to_return << element
        remaining -= 1
      end
      return to_return
    else
      each { |element| return element }
    end
    nil
  end
end
