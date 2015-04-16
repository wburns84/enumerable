require 'spec_helper'

describe 'any?' do
  describe 'empty array' do
    it{ SpecHelper.empty_array.one?.must_equal false }
  end

  describe 'singletons' do
    it{ SpecHelper.for([1]).one? { |element| element.odd?  }.must_equal true  }
    it{ SpecHelper.for([1]).one? { |element| element.even? }.must_equal false }
  end

  describe 'tuples' do
    it{ SpecHelper.for([1, 2]).one? { |element| element.zero? }.must_equal false }
    it{ SpecHelper.for([1, 2]).one? { |element| element.odd?  }.must_equal true  }
    it{ SpecHelper.for([1, 2]).one? { |element| element.even? }.must_equal true  }
    it{ SpecHelper.for([1, 2]).one? { |element| element > 0   }.must_equal false }
    it{ SpecHelper.for([1, 2]).one? { |element| element < 0   }.must_equal false }
    it{ SpecHelper.for([1, 2, 1]).one? { |element| element.zero? }.must_equal false }
    it{ SpecHelper.for([1, 2, 1]).one? { |element| element.odd?  }.must_equal false }
    it{ SpecHelper.for([1, 2, 1]).one? { |element| element.even? }.must_equal true  }
    it{ SpecHelper.for([1, 2, 1]).one? { |element| element > 2   }.must_equal false }
  end
end
