Rails.application.routes.draw do
  resources :funcionarios
  resources :usuarios
  resources :livros
  resources :emprestimos

  get "up" => "rails/health#show", as: :rails_health_check


end
