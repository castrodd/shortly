Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root new_site_path
  get sites_path, to: new_site_path
  get 'sites/:id', to: 'sites#show'
end
