Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: 'home#index'

  namespace :api, {format: 'json'} do
    namespace :v1 do
      resources :employees, only: [:index, :show, :create, :update]
    end
  end
end
