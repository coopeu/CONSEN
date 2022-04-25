Rails.application.routes.draw do
  get 'page/home'
  resources :users

  get '/page/turbo_frame_form' => 'page#turbo_frame_form', as: 'turbo_frame_form'
  post '/page/turbo_frame_submit' => 'page#turbo_frame_submit', as: 'turbo_frame_submit'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  #root "users#index"
end

