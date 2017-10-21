Rails.application.routes.draw do
  resources :jobs do
    resources :tickets
  end

  get '/sign_in', to: "application#app_sign_in_new"
  post '/sign_in', to: "application#app_sign_in"

  root "application#app_index"
end
