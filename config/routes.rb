Rails.application.routes.draw do
  resources :lists

  resource :api, only: [] do
    resource :v1, only: [] do
      resource :info, only: [:show]
      resources :lists, only: [:create]
    end
  end
end
