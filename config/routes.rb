Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'tops#index'
  get '/blogs', to: 'blogs#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
