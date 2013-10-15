Kboo::Application.routes.draw do
  resources :episode_audio
  resources :episodes

  root 'episodes#new'
end
