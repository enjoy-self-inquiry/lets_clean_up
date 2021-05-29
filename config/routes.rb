Rails.application.routes.draw do
#  root 'reports#index'
  resources :reports, only: [:new, :create]
end
