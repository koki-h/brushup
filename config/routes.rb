ActionController::Routing::Routes.draw do |map|
  map.root :controller => "sessions"
  map.resources :reminders
  map.resources :sessions

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing the them or commenting them out if you're using named routes and resources.
  map.openid "login", :controller => "sessions" , :requirements => { :method => :get }
  map.logout 'logout', :controller => "sessions", :action => "destroy", :requirements => { :method => :delete }
  map.info 'info', :controller => "sessions", :action => "index"

  map.connect ':user/sessions/:action', :controller => "sessions"

  map.connect 'timelines', :controller => "timelines", :action => "list"
  map.connect 'timelines/:action', :controller => "timelines"
  map.connect 'timelines/:action.:format', :controller => "timelines"
  map.connect 'timelines/show/:id', :controller => "timelines", :action => "show"
  map.connect 'timelines/:action/:tag', :controller => "timelines"
  map.connect 'timelines/:action/:tag.:format', :controller => "timelines"

  map.connect ':user', :controller => "reminders", :action => "index"
  map.connect ':user/list/:tag', :controller => "reminders", :action => "list"
  map.connect ':user/today/:tag', :controller => "reminders", :action => "today"
  map.connect ':user/completed/:tag', :controller => "reminders", :action => "completed"
  map.connect ':user/list/:tag.:format', :controller => "reminders", :action => "list"
  map.connect ':user/today/:tag.:format', :controller => "reminders", :action => "today"
  map.connect ':user/completed/:tag.format', :controller => "reminders", :action => "completed"
  map.connect ':user/:action/:id', :controller => "reminders"
  map.connect ':user/:action.:format', :controller => "reminders"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

end
