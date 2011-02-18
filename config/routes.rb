Bha::Application.routes.draw do
  devise_for :admins

  root :to => 'boats#index'
  
  # Static pages
  get 'married' => 'pages#married'
  
  #packages 
  get  '/packages'            => 'packages#index',  :as => 'package_index'
  get  '/packages/new'        => 'packages#new',    :as => 'new_package'
  post '/packages'            => 'packages#create'
  get  '/packages/:id/edit'  => 'packages#edit',   :as => 'edit_package'
  put  '/packages/:url'       => 'packages#update'
  get  '/packages/:url'       => 'packages#show', :as => 'package'

  #requests
  get  ':url/request' => 'requests#new', :as => 'new_request'
  post ':url/requests' => 'requests#create', :as => 'requests'
  
  #boats
  get 'boats'     => 'boats#index'
  get ':url'      => 'boats#show', :as => 'boat'
  get ':id/edit'  => 'boats#edit', :as => 'edit_boat'
  put ':id'      => 'boats#update', :as => 'boat'
  
  # users
  devise_for :admins
  
  # >The prior ity is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

ActionDispatch::Routing::Translator.translate_from_file('config','i18n-routes.yml')
