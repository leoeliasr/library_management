json.extract! livro, :id, :nome, :isbn, :autor, :genero, :disponivel, :created_at, :updated_at
json.url livro_url(livro, format: :json)
