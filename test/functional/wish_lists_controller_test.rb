require 'test_helper'

class WishListsControllerTest < ActionController::TestCase
  context 'GET to :index' do
    setup do
      WishList.expects(:find).returns([WishList.make_unsaved])
      get :index
    end

    should respond_with :success
    should render_template :index
    should assign_to :wish_lists
    should_not set_the_flash
  end

  context 'GET to :show' do
    setup do
      WishList.expects(:find).returns(WishList.make_unsaved)
      get :show, :id => 1
    end

    should respond_with :success
    should render_template :show
    should assign_to :wish_list
    should_not set_the_flash
  end

  context 'GET to :new' do
    setup do
      get :new
    end

    should respond_with :success
    should render_template :new
    should assign_to :wish_list
    should_not set_the_flash
  end

  context 'POST to :create' do
    context 'when valid' do
      setup do
        WishList.any_instance.expects(:save).returns(true)
        post :create, :wish_list => WishList.plan
      end

      should respond_with :redirect
      should redirect_to('the new wish list page') { new_wish_list_path }
      should set_the_flash.to(/created/i)
    end

    context 'when invalid' do
      setup do
        WishList.any_instance.expects(:save).returns(false)
        post :create, :wish_list => WishList.plan
      end

      should respond_with :success
      should render_template :new
      should assign_to :wish_list
      should set_the_flash.to(/problem/i)
    end
  end
end
