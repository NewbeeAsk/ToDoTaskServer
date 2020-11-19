Rails.application.routes.draw do
  devise_for :contacts
  resources :sessions, only: [:create, :destroy], defaults: { format: :json }
  resources :todo, defaults: { format: :json }
end
