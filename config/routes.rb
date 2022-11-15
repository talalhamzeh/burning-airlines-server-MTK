Rails.application.routes.draw do
  root :to =>'pages#home'
  resources :reservations
  resources :flights
  resources :airplanes

  resources :users, :only =>[:new, :create, :index]
  get'/login' => 'session#new'
  post'/login' => 'session#create'
  delete'/login' => 'session#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
