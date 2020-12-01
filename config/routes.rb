Rails.application.routes.draw do
  get 'activities/index'
  get 'activities/show'
  get 'activities/new'
  get 'activities/create'
  get 'activities/edit'
  get 'activities/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :profiles, only: %i[show edit update]
resources :activities, only: %i[index show new create edit update]

end
