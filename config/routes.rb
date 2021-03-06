Rails.application.routes.draw do
  devise_for :users
  root to: 'events#index'
    resources :users, only: [:show] do
      resources :avatars, only: [:create]
    end
    resources :events do
    resources :photos, only: [:create]
  	resources :attendances
    end
    post "events/subscribe/:id", to: "events#subscribe", as: "event_subscription"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
