Rails.application.routes.draw do
  devise_for :contacts
  resources :sessions, only: [:create, :destroy], defaults: { format: :json }
  resources :registrations, only: [:create, :destroy], defaults: { format: :json }
  resources :todo, defaults: { format: :json }
  resources :contacts do
    member do
      get :confirm_email
    end
  end
end
