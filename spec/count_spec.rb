require 'spec_helper'

describe 'count' do
  describe 'without argument' do
    it{ SpecHelper.empty_array.count.must_equal    0 }
    it{ SpecHelper.for([1]      ).count.must_equal 1 }
    it{ SpecHelper.for([1, 2]   ).count.must_equal 2 }
    it{ SpecHelper.for([1, 2, 3]).count.must_equal 3 }
  end

  #describe 'with argument' do
  #  it{ SpecHelper.empty_arry.count.must_equal 0 }
  #end
  #
  #describe 'with block' do
  #  it{ SpecHelper.empty_arry.count.must_equal 0 }
  #end

  #describe 'empty array' do
  #  it{ SpecHelper.empty_array.count.must_equal true }
  #end
  #
  #describe 'singletons' do
  #  it{ SpecHelper.for([1]).count { |element| element.odd?  }.must_equal true  }
  #  it{ SpecHelper.for([1]).count { |element| element.even? }.must_equal false }
  #end
  #
  #describe 'tuples' do
  #  it{ SpecHelper.for([1, 2]).count { |element| element.zero? }.must_equal false }
  #  it{ SpecHelper.for([1, 2]).count { |element| element.odd?  }.must_equal false }
  #  it{ SpecHelper.for([1, 2]).count { |element| element.even? }.must_equal false }
  #  it{ SpecHelper.for([1, 2]).count { |element| element > 0   }.must_equal true  }
  #end
end
