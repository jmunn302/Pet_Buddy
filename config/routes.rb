Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
<<<<<<< HEAD
  resources :pets do
    resources :booking
  end
=======

  resources :pets do
    resources :booking
  end

>>>>>>> 081abfe1ebfce1f6c1a4a9e8ff0695539fc8cc71
end
