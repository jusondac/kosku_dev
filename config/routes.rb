Rails.application.routes.draw do
  resources :room_types
  resources :rooms
  resources :names
  resources :kosans do
    get :checked_kosans
    collection do
      get :regencies
    end
  end
  get 'home/index'
  root to:'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
