Rails.application.routes.draw do
  resources :events, only: [:index] do
    get :newest, on: :collection
  end
end
