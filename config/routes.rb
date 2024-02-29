Rails.application.routes.draw do
  devise_for :users
  root to: "characters#index"
  # root to: "pages#home"

  resources :characters, only: %i[index show] do
    resources :bookings, only: %i[create index]
  end
  resources :bookings, only: :destroy
end
