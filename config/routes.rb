Rails.application.routes.draw do
  devise_for :users
  resources :jobs do
    collection do
      get :search
    end
    resources :resumes
  end
  namespace :admin do
    resources :jobs do
      member do
        post :hide
        post :publish
      end
      resources :resumes
    end
  end

  resources :chat_rooms, only: [:new, :create, :show, :index]
  mount ActionCable.server => '/cable'

  root "welcome#index"
end
