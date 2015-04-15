require 'spec_helper'

describe 'count' do
  describe 'without argument' do
    it{ SpecHelper.empty_array.count.must_equal    0 }
    it{ SpecHelper.for([1]      ).count.must_equal 1 }
    it{ SpecHelper.for([1, 2]   ).count.must_equal 2 }
    it{ SpecHelper.for([1, 2, 3]).count.must_equal 3 }
  end

  describe 'with argument' do
    it{ SpecHelper.empty_array.count(2).must_equal    0 }
    it{ SpecHelper.for([1]      ).count(1).must_equal 1 }
    it{ SpecHelper.for([1]      ).count(2).must_equal 0 }
    it{ SpecHelper.for([1, 2]   ).count(1).must_equal 1 }
    it{ SpecHelper.for([1, 2]   ).count(2).must_equal 1 }
    it{ SpecHelper.for([1, 2]   ).count(3).must_equal 0 }
    it{ SpecHelper.for([1, 2, 1]).count(1).must_equal 2 }
    it{ SpecHelper.for([1, 2, 1]).count(2).must_equal 1 }
    it{ SpecHelper.for([1, 2, 1]).count(3).must_equal 0 }
  end

  #describe 'with block' do
  #  it{ SpecHelper.empty_arry.count.must_equal 0 }
  #end
end
