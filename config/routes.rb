Rails.application.routes.draw do
  resources :jobs do
    resources :tickets
  end

  get '/sign_in', to: "sessions#new"
  post '/sign_in', to: "sessions#create"
  delete '/sign_out', to: "sessions#destroy"

  root "jobs#index"


end
