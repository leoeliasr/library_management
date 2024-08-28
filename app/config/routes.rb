Rails.application.routes.draw do
  # Defina a rota root 
  root 'livros#index'

  # Rotas para login e logout
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Recursos para os controladores
  resources :funcionarios
  resources :usuarios
  resources :livros
  resources :emprestimos

  # Rota para verificar a saúde do Rails
  get "up" => "rails/health#show", as: :rails_health_check
end
