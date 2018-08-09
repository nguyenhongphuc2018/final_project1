Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root "pages#home"
  resources :users, only: %i(index show)
  resources :posts, only: [:index, :show, :create, :destroy] do
    resources :photos, only: [:create]
    resources :likes
  end 
end
