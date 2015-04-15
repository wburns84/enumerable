require 'spec_helper'

describe 'any?' do
  describe 'empty array' do
    it{ SpecHelper.empty_array.any?.must_equal false }
  end

  describe 'singletons' do
    it{ SpecHelper.for([1]).any? { |element| element.odd?  }.must_equal true  }
    it{ SpecHelper.for([1]).any? { |element| element.even? }.must_equal false }
  end

  describe 'tuples' do
    it{ SpecHelper.for([1, 2]).any? { |element| element.zero? }.must_equal false }
    it{ SpecHelper.for([1, 2]).any? { |element| element.odd?  }.must_equal true  }
    it{ SpecHelper.for([1, 2]).any? { |element| element.even? }.must_equal true  }
    it{ SpecHelper.for([1, 2]).any? { |element| element > 0   }.must_equal true  }
  end
end
