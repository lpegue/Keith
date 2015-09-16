Rails.application.routes.draw do

#  get 'static_pages/home' => 'static_pages#home'


 root to: "static_pages#home"

 get '/contact' => 'static_pages#contact'

 get '/about' => 'static_pages#about'

   # resources :wines do
   #  resources :reviews 
   # end

  resources :users

  get "/wines" => "wines#index"
  get "/wines/new" => "wines#new", as: :new_wine
  get "/wines/:id" => "wines#show", as: :wine
  post "/wines/" => "wines#create"
  patch "/wines/:id" => "wines#update"
  delete "/wines/:id" => "wines#destroy"
  get "/wines/:id/edit" => "wines#edit", as: :edit_wine

  get "/wines/:wine_id/reviews/new" => "reviews#new", as: :new_wine_review
  get "/wines/:wine_id/reviews/:id" => "reviews#show", as: :review
  post "/wines/:wine_id/reviews/" => "reviews#create", as: :wine_reviews
  patch "/wines/:wine_id/reviews/:id" => "reviews#update"
  delete "/wines/:wine_id/reviews/:id" => "reviews#destroy"
  get "/wines/:wine_id/reviews/:id/edit" => "reviews#edit", as: :edit_review

  # get "/wines/:wine_id/reviews/:review_id/users/new" => "users#new", as: :new_users
  # post "/wines/:wine_id/reviews/:review_id/users/" => "users#create"
  # patch "/wines/:wine_id/reviews/:review_id/users/:id" => "users#update"
  # delete "/wines/:wine_id/reviews/:review_id/users/:id" => "users#destroy"
  # get "/wines/:wine_id/reviews/:review_id/users/:id/edit" => "users#edit", as: :edit_user



  # get "/about" => "about#index"

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
