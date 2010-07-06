require 'test_helper'

class RoutingTest < ActionController::IntegrationTest
  subject { controller }

  context 'wish lists' do
    should route(:get, "/wish_lists").to(:controller => :wish_lists, :action => :index)
    should route(:get, "/wish_lists/new").to(:controller => :wish_lists, :action => :new)
    should route(:post, "/wish_lists").to(:controller => :wish_lists, :action => :create)
    should route(:get, "/wish_lists/1").to(:controller => :wish_lists, :action => :show, :id => 1)
  end
end
