Rails.application.routes.draw do
  resources :projects, except: [:new, :edit]
end
