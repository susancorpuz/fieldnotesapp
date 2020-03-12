Rails.application.routes.draw do
  devise_for :users
  get 'pages/info'
  root to: redirect('/ideas')
  resources :ideas do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
