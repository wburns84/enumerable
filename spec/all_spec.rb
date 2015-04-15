require 'spec_helper'

describe 'all?' do
  describe 'empty array' do
    it{ SpecHelper.empty_array.all?.must_equal true }
  end

  describe 'singletons' do
    it{ SpecHelper.for([1]).all? { |element| element.odd?  }.must_equal true  }
    it{ SpecHelper.for([1]).all? { |element| element.even? }.must_equal false }
  end

  describe 'tuples' do
    it{ SpecHelper.for([1, 2]).all? { |element| element.zero? }.must_equal false }
    it{ SpecHelper.for([1, 2]).all? { |element| element.odd?  }.must_equal false }
    it{ SpecHelper.for([1, 2]).all? { |element| element.even? }.must_equal false }
    it{ SpecHelper.for([1, 2]).all? { |element| element > 0   }.must_equal true  }
  end
end
