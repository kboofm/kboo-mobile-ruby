Kboo::Application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
=======
  
  resources :users, :only => [:edit, :update, :index]
  devise_for :users
  root 'users#index'
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
>>>>>>> 258528a... navbar

  devise_for :users
  resources :users, :only => [:edit, :update, :index, :show]
  resources :programs
<<<<<<< HEAD
  resources :categories
  resources :episodes
  get "static_pages/faq"
=======
>>>>>>> 2aa2623... Finish CRUD program/categories/host

  get 'static_pages/about'
  root 'static_pages#home'
=======
  resources :episode_audio
>>>>>>> ffd0ab6... Episode audio db, controller, model
end
