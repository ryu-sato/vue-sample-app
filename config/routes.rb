Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root to: 'home#index'
end
