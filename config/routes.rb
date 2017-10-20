Rails.application.routes.draw do
  resources :jobs do
    resources :tickets
  end

  root "jobs#index"
end
