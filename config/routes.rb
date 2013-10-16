Kboo::Application.routes.draw do
  devise_for :users
  resources :users, :only => [:edit, :update, :index, :show]
  resources :programs

  root 'static_pages#home'
end
