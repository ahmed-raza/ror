FirstApp::Application.routes.draw do

  resources :employees, only: [:show, :index] do
    collection do
      get 'offices', to: 'employees#offices'

    end
  end
  resources :books, only: [:show, :index]
  resources :assemblies, only: [:index, :show, :new, :create]
  resources :parts, only: [:index, :show, :new]
  resources :doctors, only: [:index, :show, :new, :create]
  resources :patients, only: [:index, :show, :new, :create]
  resources :appointments, only: [:index, :show, :new, :create]

  devise_for :users

  devise_for :models

  resources :articles do
    resources :comments
  end
  get "test", to: "test#test"
  get '/test/:id' => 'test#show', constraints: { id: /[A-Z]\d{5}/ }

  resources :posts

  get ":id", to: "posts#show"

  resources :photos do
    get 'preview', on: :collection
  end


  match '/about' => 'pages#about', as: 'about'
  get 'search', to: 'search#search', as: 'search'
  get :abc, to: 'test#test'
  # The priority is based upon order of creation:
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
  root :to => 'pages#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
