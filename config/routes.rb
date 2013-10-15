Kboo::Application.routes.draw do
  resources :episode_audio
  resources :episodes

  root 'static_pages#home'
end
