Rails.application.routes.draw do
  namespace :api do
    namespace :v2 do
      get "usuarios/nome/:nome", to: "usuarios#show_by_name"
      resources :equipe_projetos
      resources :projetos
      resources :usuario_equipes
      resources :usuarios
      resources :equipes, :sprints
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # get "usuarios_controller/index" => "usuarios_controller#index"
  # get "usuarios_controller/show" => "usuarios_controller#show"
  # post "usuarios_controller/new" => "usuarios_controller#new"
  # post "usuarios_controller/create" => "usuarios_controller#create"
  # post "usuarios_controller/edit" => "usuarios_controller#edit"
  # post "usuarios_controller/update" => "usuarios_controller#update"
  # post "usuarios_controller/destroy" => "usuarios_controller#destroy"
  # post "usuarios_controller/usuario_params" => "usuarios_controller#usuario_params"



  # Defines the root path route ("/")
  # root "posts#index"
end
