Rails.application.routes.draw do
  root "static_pages#index"
  get "/projects", to: "static_pages#projects"
  get "/skills", to: "static_pages#skills"
  get "/tools", to: "static_pages#tools"

  put "/switch_locale", to: "locales#switch"

  resources :articles
end
