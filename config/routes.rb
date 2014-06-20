Rails.application.routes.draw do
  resource :api, only: [] do
    resource :v1, only: [] do
      resource :info, only: [:show]
    end
  end
end
