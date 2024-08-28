Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  # Defina a rota root 
  root 'livros#index'

   # Rotas de autenticação
   get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'
   delete 'logout', to: 'sessions#destroy'
 
   # Rotas para usuários
   get 'signup', to: 'users#new'
   post 'signup', to: 'users#create'
   
  # Recursos para os controladores
  resources :funcionarios
  resources :usuarios
  resources :livros
  resources :emprestimos

  # Rota para verificar a saúde do Rails
  get "up" => "rails/health#show", as: :rails_health_check
end
