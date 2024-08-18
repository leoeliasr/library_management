class AddConstraintsToLivros < ActiveRecord::Migration[7.1]
  def change
    change_column :livros, :isbn, :string, limit: 13 

    add_index :livros, :isbn, unique: true

    change_column_default :livros, :disponivel, from: nil, to: true 
  end
end
