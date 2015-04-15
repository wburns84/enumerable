require 'test_helper'

describe 'all?' do
  describe 'with empty array' do
    it{ TestHelper.empty_array.any?.must_equal true }
  end
end