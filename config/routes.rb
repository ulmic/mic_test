MicTest::Application.routes.draw do
  root to: 'users#new'
  match 'question' => 'questions#index'
  match 'foo' => 'questions#foo'
  resources :questions
  resources :users, only: [ :new, :create ]
  get "admin" => "admin/sessions#new"
  namespace :admin do
    resources :questions
    resource :sessions, only: [ :new, :create, :destroy ]
    resources :variants, except: [ :show ]
  end
end
