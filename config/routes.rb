Rails.application.routes.draw do

  get 'home'            => 'home#home'
  resources :items, only: %i[create edit update index show] do
    member do
      get 'rescrap'
    end
    collection do
      delete '/:id'   => 'items#delete' 
    end
  end

  resources :lists, only: %i[create edit delete index show]
  resources :users, only: %i[create edit delete show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
