ActionController::Routing::Routes.draw do |map|
  map.resources :wish_lists, :only => [ :index, :show, :new, :create ]
end
