Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  #NOTE: for whatever reason, absolute paths are not working here (as the instructions tell me to do), but relative ones are fine.  WTF?!?!
  get "api/v1/tasks", to: "api/v1/tasks#index"
  get "api/v1/tasks/:id", to: "api/v1/tasks#show"
  post "api/v1/tasks", to: "api/v1/tasks#create"
  patch "api/v1/tasks/:id", to: "api/v1/tasks#update"
  delete "api/v1/tasks/:id", to: "api/v1/tasks#destroy"
  # Defines the root path route ("/")
  # root "posts#index"
end

# Rails.application.routes.draw do
# end
