require 'spec_helper'

describe 'all?' do
  describe 'with empty array' do
    it{ SpecHelper.empty_array.any?.must_equal true }
  end

  describe 'singleton' do
    it{ SpecHelper.for([1]).any? { |element| element.odd?  }.must_equal true  }
    it{ SpecHelper.for([1]).any? { |element| element.even? }.must_equal false }
  end
end
