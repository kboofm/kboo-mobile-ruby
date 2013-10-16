Kboo::Application.routes.draw do
  devise_for :users
  resources :users, :only => [:edit, :update, :index, :show]
  resources :programs

  resources :episode_audio
  resources :episodes


  root 'static_pages#home'
end
