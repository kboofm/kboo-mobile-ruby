Kboo::Application.routes.draw do
  get "static_pages/home"
  root 'static_pages#home'
end
