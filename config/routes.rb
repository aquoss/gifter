Rails.application.routes.draw do

  devise_for :users
  root to: 'home#index'

  get '/users/:id', to: 'users#show', as: 'user'

  get '/users/:id/payment', to: 'payment#index', as: 'payment'
  post '/users/:id/payment', to: 'charges#create'
  get '/users/:id/payment/new', to: 'payment#new', as: 'new_payment'

end
