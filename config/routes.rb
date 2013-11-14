Kboo::Application.routes.draw do
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

  devise_for :users
  resources :users, :only => [:edit, :update, :index, :show]
  resources :programs
  resources :categories
  resources :episodes
  
  get 'static_pages/faq'
  get 'static_pages/about'
  get 'static_pages/board'
  get 'static_pages/committees'
  get 'static_pages/faq'
  get 'static_pages/home'
  get 'static_pages/press'
  get 'static_pages/staff'
  get 'static_pages/story'
  get 'static_pages/strategic_plan'

  root 'episodes#index'
end
