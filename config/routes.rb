Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'jam/new', to: 'jam#new', as: :jam_new
  post 'jam', to: 'jam#create'
end
