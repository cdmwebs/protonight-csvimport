require 'test_helper'

class WishListUploadTest < ActionController::IntegrationTest
  context 'on the new wish list page' do
    setup do
      visit new_wish_list_path
    end

    should 'load the page' do
      assert page.has_content?("Upload a Wish List")
    end

    context 'clicking upload' do
      setup do
        fill_in "Title", :with => 'Sample Wish List'
        attach_file "wish_list_file", Rails.root.join("test", "fixtures", "wish_list.csv")
        click "Upload"
      end

      should_change("number of wish lists", :by => 1) { WishList.count }
      should "display the list's title on the resulting page" do
        assert page.has_content?("Sample Wish List")
      end
    end
  end
end
