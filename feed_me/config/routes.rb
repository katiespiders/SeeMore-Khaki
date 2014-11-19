Rails.application.routes.draw do


  root    "home#index"

  get     "/auth/developer",          to: "sessions#new",     as: :developer_signin
  get     "/auth/:provider",          to: "sessions#new",     as: :signin

  post    "/auth/:provider/callback", to: "sessions#create",  as: :sessions
  # get     "/auth/:provider/callback", to: "sessions#create",  as: :sessions
  # post    "/auth/:provider/callback", to: "sessions#create",  as: :sessions

  delete  "/users/signout",           to: "sessions#destroy", as: :signout
  get     "/users/:id/feed",          to: "feed#show",        as: :feed
  # post  "/auth/:provider/callback",    to: "users#create", as:   :user_create


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
end
