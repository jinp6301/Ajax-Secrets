AjaxDemo::Application.routes.draw do
  root :to => "Users#new"

  resource :session
  resources :users do
    resources :secrets
    resource :friendship, only: [:create]
  end

end
