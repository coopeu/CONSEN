Rails.application.routes.draw do
  get 'public/index'
  resources :users

  get '/public/turbo_frame_form' => 'public#turbo_frame_form', as: 'turbo_frame_form'
  post '/public/turbo_frame_submit' => 'public#turbo_frame_submit', as: 'turbo_frame_submit'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "public#index"
end
