Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :profiles, only: %i[show new create edit update] do
  resources :activities, only: %i[new create edit update]
resources :activities, only: %i[index show] 

end
