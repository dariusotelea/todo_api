Rails.application.routes.draw do
  resources :tasktypes, :only => [:index, :show, :update, :create, :destroy]
  resources :tasks, :only => [:index, :show, :update, :create, :destroy]
  resources :users, :only => [:index, :show, :update, :create, :destroy]
end
