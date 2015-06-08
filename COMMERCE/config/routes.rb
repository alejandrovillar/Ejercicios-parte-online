=begin
Rails.application.routes.draw do
  root :to => "laptops#index"
  resources :laptops
end
=end
Rails.application.routes.draw do
  root :to => "backpacks#index"
  resources :laptops
  resources :backpacks
end