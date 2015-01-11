MicTest::Application.routes.draw do
  root to: 'users#new'
  match 'question' => 'questions#index'
  match 'foo' => 'questions#foo'
  resources :questions do
    member do
      resources :answers, only: [ :new, :create ]
    end
  end
  resources :users, only: [ :new, :create ] do
    collection do
      get :success
    end
  end
  resource :sessions, only: [ :new, :create, :destroy ]
  get "admin" => "admin/sessions#new"
  namespace :admin do
    resources :questions
    resources :variants, except: [ :show ]
    resource :sessions, only: [ :new, :create, :destroy ]
    resources :users, only: :index do
      member do
        resources :answers, only: :index
      end
    end
  end
end
