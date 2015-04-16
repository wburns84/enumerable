require 'spec_helper'

describe 'first' do
  it{ SpecHelper.empty_array.include?(nil).must_equal false }
  it{ SpecHelper.for([1]).include?(nil).must_equal false }
  it{ SpecHelper.for([1]).include?(1).must_equal   true  }
  it{ SpecHelper.for([1]).include?(2).must_equal   false }
  it{ SpecHelper.for([1, 2]).include?(nil).must_equal false }
  it{ SpecHelper.for([2, 1]).include?(1).must_equal true  }
  it{ SpecHelper.for([2, 1]).include?(2).must_equal true  }
  it{ SpecHelper.for([2, 1]).include?(3).must_equal false }
end
