# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'pages/info'
  get 'pages/readme'
  root to: redirect('/ideas')

  resources :ideas do
    resources :comments
  end
  resources :ideas do
    get 'page/:page', action: :index, on: :collection
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
