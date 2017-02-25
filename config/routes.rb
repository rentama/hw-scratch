Rails.application.routes.draw do
  resources :dashboards
  root 'sales#index'
end
