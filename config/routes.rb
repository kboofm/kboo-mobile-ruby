Kboo::Application.routes.draw do
<<<<<<< HEAD

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
