Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sites
  root 'sites#new'
  get '/sites/', to: 'sites#index'
  
end
