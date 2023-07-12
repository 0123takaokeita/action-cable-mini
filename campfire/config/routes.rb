Rails.application.routes.draw do
  # action cable 有効化
  mount ActionCable.server => '/cable'

  get 'rooms/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'rooms#show'
end
