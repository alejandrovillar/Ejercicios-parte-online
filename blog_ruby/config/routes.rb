Rails.application.routes.draw do
  root :to => "computers#index"
  resources :computers
end