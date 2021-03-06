Beach::Application.routes.draw do


  get "infos/terms"
  ComfortableMexicanSofa::Routing.admin(:path => '/cms-admin')
  
  ## LANDING PAGE ROUTES

    # route for hard coded landing page. no longer active.
    get 'services/rehab_b', to: 'services#rehab_b'
    #match ':controller/:action', controller: /services/, via: [:get, :post]
    # route for dynamic landing pages
    get 'services/:kw_group/:version', to: 'services#landing_kw'
    post 'services/thanks', to: 'services#thanks'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"


  authenticated :user do
    root to: "users#index", as: :authenticated_root
  end 

  root to: 'cms_content#render_html'
  
  # Stops new signups. Send a message instead
  if Rails.env == 'production'
    devise_for :users, :controllers => { :registrations => "registrations" } 
  else
    devise_for :users, :controllers => { :registrations => "registrations" } 
  end

  resources :users

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  
  # Make sure this routeset is defined last
    ComfortableMexicanSofa::Routing.content(:path => '/', :sitemap => false)
  
end
