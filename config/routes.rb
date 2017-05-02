Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :videos, only: [:index, :new, :create]
  root to: 'videos#index'

  # callback route redirected after a successful authentication
  get '/auth/:provider/callback', to: 'sessions#create' 

  # logging out
  delete '/logout', to: 'sessions#destroy', as: :logout


  # for uploading files
  resources :video_uploads, only: [:new, :create]
end
