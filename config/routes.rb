Rails.application.routes.draw do

  devise_for :users
  root to: 'home#index'

  get '/users/:id', to: 'users#show', as: 'user'

  get '/users/:id/new', to: 'users#new', as: 'new_user'
  post '/users/:id/new', to: 'users#create'

  # post '/users/:id/payment', to: 'payment#create', as: 'payment'

  # get '/users/:id/payment/new', to: 'payment#new', as: 'new_payment'

  # get '/users/:id/charges', to: 'charges#index', as: 'charges'
  # post '/users/:id/charges', to: 'charges#create'

end
