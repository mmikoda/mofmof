Rails.application.routes.draw do
  resources :sessions
  resources :favorites, only: [:create, :destroy]
  resources :users
  resources :feeds do
    collection do
      post :confirm
    end
  end
end
