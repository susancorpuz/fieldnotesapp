Rails.application.routes.draw do
  devise_for :users
  get 'pages/info'
  root to: redirect('/ideas')
  resources :ideas do
    resources :comments
  end
    resources :ideas do
    get 'page/:page', action: :index, on: :collection
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
