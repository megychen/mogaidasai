Rails.application.routes.draw do
  devise_for :users
  resources :jobs do
    collection do
      get :search
      get :developer
      get :healthcare
      get :customer_service
      get :sales_marketing
      get :legal
      get :non_profit
      get :human_resource
      get :design
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

  namespace :account do
    resources :jobs
  end

  root "welcome#index"
end
