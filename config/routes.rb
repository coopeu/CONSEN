Rails.application.routes.draw do
  
  resources :rooms do 
    resources :messages
  end
  resources :users
  resources :quotes

  get '/page/turbo_frame_form' => 'page#turbo_frame_form', as: 'turbo_frame_form'
  post '/page/turbo_frame_submit' => 'page#turbo_frame_submit', as: 'turbo_frame_submit'
  post '/page/post_something' => 'page#post_something', as: 'post_something'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
  #root "users#index"
end

