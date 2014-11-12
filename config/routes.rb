Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users,   only: [:create, :show, :update]
      get       '/login',  to: 'sessions#login'
    end
  end
end
