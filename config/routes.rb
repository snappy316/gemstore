Rails.application.routes.draw do
  namespace :api do #, constraints: { subdomain: 'api' }, path: '/' do
    resources :reviews
    resources :products
  end

  root 'welcome#index'
end
