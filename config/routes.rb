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
  get "admin" => "admin/sessions#new"
  namespace :admin do
    resources :questions do
      member do
        resources :variants, except: [ :index, :show ]
      end
    end
    resources :variants, only: :index
    resource :sessions, only: [ :new, :create, :destroy ]
  end
end
