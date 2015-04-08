Rails.application.routes.draw do
  resources :payments, only: [:create]
  
  resources :charges
  
  resources :profiles, only: [:show]
  
  resources :goals do
    patch 'achieve', on: :member  #achieve_goal_path(goal)
  end

  resources :goal_comments do
    resources :likes 
  end  
  resources :blogs  
  
  #resources :blogs, path: "blog" do
  #  resources :comments
  #end
  
  


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :controllers => { :registrations => "registrations" }
  
  
  root 'pages#getintouch'
  
  get '/confirmation' => 'pages#confirmation'
  
  get '/get-in-touch' => 'pages#getintouch'
  
  get 'thank_you' => 'pages#thank_you'
  post 'thank_you' => 'pages#thank_you'
  
  get 'purchase' => 'pages#purchase'
  post 'purchase' => 'payments#create'
  
  get 'about' => 'pages#about'

  get 'faq' => 'pages#faq'

  get 'contact' => 'pages#contact'
  post 'contact' => 'pages#contact'

  # Form_example Paths

  get 'form_input', to: 'form_example#form_input'

  post 'form_output', to: 'form_example#form_output'

  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'welcome#index'

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
