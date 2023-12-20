Rails.application.routes.draw do
  root "static_pages#index"
  get "/about", to: "static_pages#about"
  get "/articles", to: "static_pages#articles"
  get "/projects", to: "static_pages#projects"
  get "/skills", to: "static_pages#skills"
  get "/tools", to: "static_pages#tools"

  put "/switch_locale", to: "locales#switch"
  put "/switch_theme", to: "locales#switch_theme"
end
