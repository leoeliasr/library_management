class CreateLivros < ActiveRecord::Migration[7.1]
  def change
    create_table :livros do |t|
      t.string :nome
      t.string :isbn
      t.string :autor
      t.string :genero
      t.boolean :disponivel

      t.timestamps
    end
  end
end
