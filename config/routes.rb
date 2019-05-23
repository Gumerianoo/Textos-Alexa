Rails.application.routes.draw do
  root 'stories#new'
  resources :stories, only: [:new, :create]
end
