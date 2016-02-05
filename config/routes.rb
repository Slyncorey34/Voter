Rails.application.routes.draw do
<<<<<<< HEAD


  get 'quiz/question'

  get 'quiz/answer'

  get 'quiz/match'

  get 'candidates/index'

  get 'candidates/show'

=======
>>>>>>> da1db8c1c563669deac0e22ace61b3e82e6aa045
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#welcome'

  get '/intro', to: 'home#intro'

  get '/candidates', to: 'candidates#index'
<<<<<<< HEAD
  get '/candidates/:id', to: 'candidates#show(:id)'
=======
  get '/candidates/:id', to: 'candidates#show'

  get '/login', to: 'sessions#new'
  post 'login', to: 'candidates#index'


>>>>>>> da1db8c1c563669deac0e22ace61b3e82e6aa045
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
<<<<<<< HEAD
    resources :voters
    resources :voters, except: [:show]
    resources :sessions
    resources :candidates
=======


    resources :voters, except: [:show]
    resources :sessions
    # resources :candidates
>>>>>>> da1db8c1c563669deac0e22ace61b3e82e6aa045

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
