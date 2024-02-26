Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :characters, only: %i[index show] do
    resources :bookings, only: %i[new create index]
  end
end
