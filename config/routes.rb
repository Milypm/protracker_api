Rails.application.routes.draw do
  resources :registrations, only: [:create]
  resources :sessions, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

  resources :projects do
    resources :project_tasks do
      resources :dev_tasks, except: [:show]
    end
  end

  root to: "static#home"
end
