Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  #get "__api__endpoints___"
  namespace :api do
    namespace :v1 do
      resources :customers, only: [:index] 
      get :search, to: 'customers#search'
    end
  end
end
