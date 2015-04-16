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

  def chunk
    to_return = []
    to_add    = []
    truthiness = nil
    each do |element|
      truthiness = yield(element) if truthiness.nil?
      unless truthiness == yield(element)
        unless to_add.empty?
          to_return << [truthiness, to_add]
          to_add = []
        end
        truthiness ^= 1
      end
      to_add << element
    end
    to_return << [truthiness, to_add] unless to_add.empty?
    to_return.to_enum
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

  def include? to_find
    each { |element| return true if element == to_find }
    return false
  end

  def one?
    found = false
    each do |element|
      if found
        return false if yield element
      else
        found = yield element
      end
    end
    found
  end
end
