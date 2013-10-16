Kboo::Application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  resources :users, :only => [:edit, :update, :index, :show]
  resources :programs
=======
  resources :episode_audio
  resources :episodes
>>>>>>> master

  root 'static_pages#home'
end
