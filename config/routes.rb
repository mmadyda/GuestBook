Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
root "posts#index"
resources :posts
get 'locale', to: 'locales#save_locale', as: :set_locale

end
