Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    collection do
      get :top
    end
    member do
      get :chef
    end
      resources :reviews, only: %i[new create destroy]
  end
end
