json.extract! funcionario, :id, :email, :senha, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)
