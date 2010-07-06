require 'test_helper'

class WishListTest < ActiveSupport::TestCase

  should validate_presence_of(:title)

  should belong_to(:donor_organization)
  should have_many(:wishes)

  context 'a wish list' do
    setup do
      @wish_list = WishList.new(:title => 'Test')
    end

    should 'respond to a file setter' do
      assert @wish_list.file = File.new(Rails.root.join("test", "fixtures", "wish_list.csv"))
    end
  end
end
