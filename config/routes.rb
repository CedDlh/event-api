Rails.application.routes.draw do
  #devise_for :users
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :events, only: [ :index, :show]
      resources :tickets, only: [:index, :show, :create, :update]
    end
  end
  #root to: 'api/v1/events#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

