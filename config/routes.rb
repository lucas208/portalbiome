Rails.application.routes.draw do
  resources :writings
  resources :individuals
  resources :individualcategories
  get 'control_users/index'
  resources :articles
  resources :events
  get 'welcome/index'
  root 'welcome#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
