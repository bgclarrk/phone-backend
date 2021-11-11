Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :calls
    end
  end
  
end
