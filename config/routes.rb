Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :user, only: [:index, :show] do
    resources :post, only: [:index, :show] do
    end
  end

end
