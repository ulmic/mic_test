MicTest::Application.routes.draw do
  root :to => 'user#new'
  match 'question' => 'questions#index'
  match 'foo' => 'questions#foo'
  resources :questions

  resources :users, only: [ :new, :create ]
end
