Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sites#new'
  resources :sites
  get 'https://ortly.herokuapp.com/:id', to: 'sites#show'
end
