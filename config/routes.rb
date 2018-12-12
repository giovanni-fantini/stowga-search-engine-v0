Rails.application.routes.draw do
  get 'warehouses', to: 'warehouses#index'
  root to: 'warehouses#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
