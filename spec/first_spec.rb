require 'spec_helper'

describe 'first' do
  describe 'without argument' do
    it{ SpecHelper.empty_array.first.must_equal  nil }
    it{ SpecHelper.for([1]      ).first.must_equal 1 }
    it{ SpecHelper.for([1, 2]   ).first.must_equal 1 }
    it{ SpecHelper.for([2, 1]   ).first.must_equal 2 }
    it{ SpecHelper.for([1, 2, 3]).first.must_equal 1 }
    it{ SpecHelper.for([1, 3, 2]).first.must_equal 1 }
    it{ SpecHelper.for([2, 1, 3]).first.must_equal 2 }
    it{ SpecHelper.for([2, 3, 1]).first.must_equal 2 }
    it{ SpecHelper.for([3, 1, 2]).first.must_equal 3 }
    it{ SpecHelper.for([3, 2, 1]).first.must_equal 3 }
  end

  describe 'with argument' do
    it{ SpecHelper.empty_array.first(2).must_equal    [ ] }
    it{ SpecHelper.for([1]      ).first(0).must_equal [ ] }
    it{ SpecHelper.for([1]      ).first(1).must_equal [1] }
    it{ SpecHelper.for([1]      ).first(2).must_equal [1] }
    it{ SpecHelper.for([1, 2]   ).first(0).must_equal [ ] }
    it{ SpecHelper.for([1, 2]   ).first(1).must_equal [1] }
    it{ SpecHelper.for([1, 2]   ).first(2).must_equal [1, 2] }
    it{ SpecHelper.for([1, 2]   ).first(3).must_equal [1, 2] }
    it{ SpecHelper.for([1, 2, 1]).first(0).must_equal [ ] }
    it{ SpecHelper.for([1, 2, 1]).first(1).must_equal [1] }
    it{ SpecHelper.for([1, 2, 1]).first(2).must_equal [1, 2] }
    it{ SpecHelper.for([1, 2, 1]).first(3).must_equal [1, 2, 1] }
    it{ SpecHelper.for([1, 2, 1]).first(4).must_equal [1, 2, 1] }
  end
end
