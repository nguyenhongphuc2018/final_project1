Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root "pages#home"
  resources :users, only: %i(show)
  resources :posts, only: [:index, :show, :create, :destroy] do
    resources :photos, only: [:create]
    resources :likes, only: [:create, :destroy]
  end 
end
