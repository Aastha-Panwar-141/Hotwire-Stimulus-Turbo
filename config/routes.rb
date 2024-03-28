Rails.application.routes.draw do
  resources :players
  resources :news
  resources :employees

  get 'home/index'
  get 'other/index'


  get '/home/turbo_frame_form' => 'home#turbo_frame_form', as: 'turbo_frame_form'
  post '/home/turbo_frame_submit' => 'home#turbo_frame_submit', as: 'turbo_frame_submit'
  post '/other/post_something' => 'other#post_something', as: 'post_something'

  # root to: "home#index"
  root "employees#index"



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
