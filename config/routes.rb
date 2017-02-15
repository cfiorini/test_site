Rails.application.routes.draw do

  namespace :admin do
    resources :languages, except: [:show, :destroy]
    resources :sites, except: [:show]
    resources :offices, except: [:show]
    resources :translations, only: [:new, :create, :destroy]
    resources :news_items, except: [:show]
    resources :users, except: [:show]
    resource :confs, only: [:show, :update]
    get 'signature' => 'signature#index', as: :signature
    post 'signature/update' => 'signature#update'
  end

  namespace :site_admin do
    root to: 'translations#index'
    resources :translations, only: [:index, :edit, :update]
    resources :local_news_items, except: [:show]
    resources :local_legal_pages, except: [:show]
  end

  resources :contacts, only: [:new, :create]
  resources :offices, only: [:index]
  resources :sites, only: [:show] do
    resources :legal_pages, only: [:show]
  end
  resources :local_news_items, only: [:show]

  resource :session, controller: 'clearance/sessions', only: [:create]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
    root 'home#index'

    get '/sign_in' => 'clearance/sessions#new', as: 'sign_in'
    delete '/sign_out' => 'clearance/sessions#destroy', as: 'sign_out'

    get '/:slug' => 'sites#show'

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
