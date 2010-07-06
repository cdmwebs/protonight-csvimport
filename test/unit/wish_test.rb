require 'test_helper'

class WishTest < ActiveSupport::TestCase
  should belong_to(:wish_list)
end
