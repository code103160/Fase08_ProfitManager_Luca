Rails.application.routes.draw do
  
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users
      resources :gains
      resources :expenses
      devise_for :users, controllers: { session: "api/v1/sessions" }
    end
  end
end
