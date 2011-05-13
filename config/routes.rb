Photon::Application.routes.draw do
  resources :users, :user_session
  resources :albums do
    resources :pictures
  end

  match "/login", :to => "user_sessions#new"
  match "/logout", :to => "user_sessions#destroy"
  match "/register", :to => "users#new"

  root :to => "albums#index"
end
