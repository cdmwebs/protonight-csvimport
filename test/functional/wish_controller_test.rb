require File.dirname(__FILE__) + '/../test_helper'

class WishControllerTest < ActionController::TestCase
  context "picking wishes" do
    setup do
      @wish = Wish.new(:description => 'My Toy')
      @donor_org = 5
    end
    should "permit wishes to be assigned to donor organizations" do
      assert @wish.donor_organization.nil?
      @wish.assign_to(@donor_org)
      assert @wish.donor_organization, @donor_org
    end
  end
end