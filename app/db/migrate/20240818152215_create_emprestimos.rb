class CreateEmprestimos < ActiveRecord::Migration[7.0]
  def change
    create_table :emprestimos do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :livro, null: false, foreign_key: true
      t.date :data_emprestimo, null: false
      t.date :data_devolucao, null: false

      t.timestamps
    end
  end
end
