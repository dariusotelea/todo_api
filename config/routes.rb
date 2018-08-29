Rails.application.routes.draw do
  resources :tasktypes, :only => [:index, :show, :update, :create, :destroy]

  resources :tasks, :only => [:index, :show, :update, :create, :destroy] do
    get :create_report, on: :collection
  end

  resources :users, :only => [:index, :show, :update, :create, :destroy]
end
