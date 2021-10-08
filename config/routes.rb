Rails.application.routes.draw do
  resources :feeds do
    collection do
      post :confirm
    end
  end
  
  resources :contacts
  get 'sessions/new'
  root to: 'tops#index'
  get '/blogs', to: 'blogs#index'

  resources :favorites, only: [:create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  resources :blogs do
    collection do
      post :confirm
    end
  end
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
