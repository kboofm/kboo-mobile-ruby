Kboo::Application.routes.draw do
  devise_for :users
  resources :users, :only => [:edit, :update, :index, :show]
  resources :programs
  resources :categories
  resources :episode_audio
  resources :episodes
  get "static_pages/faq"

  root 'static_pages#home'
end
