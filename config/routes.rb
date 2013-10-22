Kboo::Application.routes.draw do

  devise_for :users
  resources :users, :only => [:edit, :update, :index, :show]
  resources :programs
  resources :categories
  resources :episodes
  get "static_pages/faq"

  get 'static_pages/about'
  root 'static_pages#home'
end
