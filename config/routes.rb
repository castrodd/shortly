Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sites#new'
  get '/sites/:id', to: 'sites#index'
  get '/sites/index', to: 'sites#new'
end
