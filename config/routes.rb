Rails.application.routes.draw do
  
  resources :facility_types
  resources :organization_address_types
  resources :addresses
  resources :industry_sectors
  root 'home#index'
  
  resources :organizations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
end
