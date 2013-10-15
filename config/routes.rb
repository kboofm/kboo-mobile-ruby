Kboo::Application.routes.draw do
  resources :users, :only => [:edit, :update, :index]
  devise_for :users
 
  root "static_pages#index"
end
