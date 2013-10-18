Kboo::Application.routes.draw do
  resources :episodes


  get 'static_pages/about'
  root 'static_pages#home'
end
