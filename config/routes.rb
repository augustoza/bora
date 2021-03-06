Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :profiles, only: %i[show edit update] do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  resources :activities, only: %i[index show new create edit update] do
    resources :explorations, only: %i[index new create]
    
 
  end
end
