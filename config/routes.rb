Rails.application.routes.draw do
  devise_for :users
  root 'chatroom#index'
  resources :messages
end
